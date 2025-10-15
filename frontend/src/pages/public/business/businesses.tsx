import MainLayout from "@/layouts/main-layout";
import BusinessList from "@/pages/public/business/components/business-list";
import {useState} from "react";
import api from "@/lib/axios";
import {Pagination} from "@/components/ui/custom/pagination";
import {Select, SelectContent, SelectItem, SelectTrigger, SelectValue} from "@/components/ui/select";
import type {BusinessResponse, PaginatedResponse} from "@/types/businesses";
import {useAuth} from "@/context/AuthContext";
import {Button} from "@/components/ui/button";
import {Input} from "@/components/ui/input";
import CustomModalForm from "@/components/custom-modal-form";
import {BusinessModalFormConfig} from "@/components/config/config-business-modal-form";
import DialogRequestShow from "@/pages/public/business/components/request-modal";
import {useApiForm} from "@/hooks/useApiForm";
import { useQueryData } from "@/hooks/useQueryData";

export default function Businesses() {
    const { data, filters, setFilters, loading } = useQueryData<BusinessResponse, {
        type: string;
        myProjects: number | string;
    }>({
        url: "/businesses",
        initial: { type: "all", myProjects: 0 },
    });

    /*-----------Form block start-----------*/
    /*-----------Form block start-----------*/
    /*-----------Form block start-----------*/
    const [modalOpen, setModalOpen] = useState(false);
    const [mode, setMode] = useState<"create" | "edit">("create");
    const [editingId, setEditingId] = useState<number | null>(null);
    const {  data: formData, setData: setFormData, reset, errors, processing, submit } = useApiForm({
        name: "",
        description: "",
        image: null as File | null,
        type: "",
    });

    const openCreate = () => {
        reset(); // очистить форму
        setMode("create");
        setEditingId(null);
        setModalOpen(true);
    };

    const openEdit = (item: any) => {
        console.log(item)
        reset({
            name: item.name ?? "",
            description: item.description ?? "",
            image: null,
            type: item.type ?? "",
        });
        setMode("edit");
        setEditingId(item.id);
        setModalOpen(true);
    };
    const handleSubmit = async (e: React.FormEvent) => {
        e.preventDefault();

        const form = new FormData();
        Object.entries(formData).forEach(([key, value]) => {
            form.append(key, value ?? "");
        });
        console.log(form)
        try {
            if (mode === 'create') {
                const response = await api.post("/businesses", form, {
                    headers: { "Content-Type": "multipart/form-data" },
                });
                console.log("✅ Успешно:", response.data);
            } else if(mode === "edit" && editingId){
                form.append("_method", "PUT");
                const response = await api.post(`/businesses/${editingId}`, form, {
                    headers: { "Content-Type": "multipart/form-data" },
                });
                console.log("✅ Успешно:", response.data);
            }

        } catch (error: any) {
            console.error("Error:", error.response?.data || error);
        }
    };

    /*-----------Form block end-----------*/
    /*-----------Form block end-----------*/
    /*-----------Form block end-----------*/
    const {user} = useAuth();

    return (
        <MainLayout className="mx-auto mt-5 flex max-w-[1150px] flex-col gap-5 px-7">

            <div className={'flex items-center'}>
                <div className={'w-[200px]'}>
                    <Select
                        value={filters.type}
                        onValueChange={(value) => setFilters({ type: value })}
                    >
                        <SelectTrigger>
                            <SelectValue placeholder={`All`}></SelectValue>
                        </SelectTrigger>
                        <SelectContent>
                            <SelectItem value="all">All</SelectItem>
                            {data?.types?.map((el) => (
                                <SelectItem key={el} value={el}>{el}</SelectItem>
                            ))}
                        </SelectContent>
                    </Select>
                </div>
                <div className="ml-auto">
                    {user ? (
                        <div className="flex items-center gap-3">
                            <label htmlFor="myBusinesses" className={'flex w-full cursor-pointer items-center justify-end p-2'}>
                                <span>Only my projects</span>
                                &nbsp;&nbsp;
                                <Input
                                    className={'w-[30px] cursor-pointer'}
                                    id="myBusinesses"
                                    type={'checkbox'}
                                    checked={data?.myProjects == 1}
                                    onChange={(e) => setFilters({ myProjects: e.target.checked ? 1 : 0 })}
                                />
                            </label>
                            <DialogRequestShow myRequests={data?.myRequests ?? []} unreadCount={data?.unreadCount}/>
                            <CustomModalForm
                                open={modalOpen}
                                onOpenChange={setModalOpen}
                                title={mode === "create" ? "Create Business" : "Edit Business"}
                                description={mode === "create" ? "Create new" : "Edit existing"}
                                fields={[
                                    { id: "name", name: "name", label: "Name", type: "text" },
                                    { id: "description", name: "description", label: "Description", type: "textarea" },
                                    { id: "type", name: "type", label: "Type", type: "text" },
                                    { id: "image", name: "image", label: "Image", type: "file" },
                                ]}
                                data={formData}
                                setData={setFormData}
                                errors={errors}
                                processing={processing}
                                onSubmit={handleSubmit}
                                submitLabel={mode === "create" ? "Create" : "Save"}
                            />
                        </div>
                    ) : (
                        <Button disabled>Log in to add a project...</Button>
                    )}
                </div>
            </div>

            <BusinessList
                onEdit={(el) => openEdit(el)}
                businesses={data?.businesses.data ?? []}
                //onDelete={handleDelete}
            />
            {/*<Pagination products={data?.businesses} rowPerPage={false}/>*/}
        </MainLayout>
    );
}
