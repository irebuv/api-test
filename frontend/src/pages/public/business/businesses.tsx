import MainLayout from "@/layouts/main-layout";
import BusinessList from "@/pages/public/business/components/business-list";
import {useEffect, useState} from "react";
import api from "@/lib/axios";
import {Pagination} from "@/components/ui/custom/pagination";
import {Select, SelectContent, SelectItem, SelectTrigger, SelectValue} from "@/components/ui/select";
import type {BusinessResponse, PaginatedResponse} from "@/types/businesses";
import axios from "@/lib/axios";
import {useAuth} from "@/context/AuthContext";
import {Button} from "@/components/ui/button";
import {Input} from "@/components/ui/input";
import {CustomModalForm} from "@/components/custom-modal-form";
import {BusinessModalFormConfig} from "@/components/config/config-business-modal-form";
import DialogRequestShow from "@/pages/public/business/components/request-modal";

export default function Businesses() {
    const [data, setData] = useState<BusinessResponse | null>(null);
    const [loading, setLoading] = useState(true);
    const searchParams = new URLSearchParams(window.location.search);
    const [filters, setFilters] = useState({
        type: searchParams.get('type') || 'all',
        myProjects: searchParams.get('myProjects') || 0,
    });
    const {user} = useAuth();
    console.log(data)
    useEffect(() => {
        api
            .get<BusinessResponse>("/businesses")
            .then((res) => setData(res.data))
            .catch((err) => console.error(err))
            .finally(() => setLoading(false));
    }, []);

    useEffect(() => {
        const onPopState = () => {
            const params = new URLSearchParams(window.location.search);
            setFilters({
                type: params.get('type') || 'all',
                myProjects: params.get('myProjects') || 0,
            });
            fetchData(params);
        };
        window.addEventListener('popstate', onPopState);
        return () => window.removeEventListener('popstate', onPopState);
    }, []);
    useEffect(() => {
        fetchData(new URLSearchParams(window.location.search));
    }, []);

    const fetchData = async (paramsOverride?: URLSearchParams) => {
        const params = paramsOverride || new URLSearchParams(window.location.search);

        const response = await axios.get('/businesses', {
            params: Object.fromEntries(params.entries()),
        });
        setData(response.data);
    };

    const updateFilters = (newValues: Partial<typeof filters>) => {
        const updated = { ...filters, ...newValues };
        setFilters(updated);

        const params = new URLSearchParams(updated);
        window.history.pushState({}, '', `?${params.toString()}`);

        fetchData(params);
    };


    if (loading) return <div>Loading...</div>;
    return (
        <MainLayout className="mx-auto mt-5 flex max-w-[1150px] flex-col gap-5 px-7">

            <div className={'flex items-center'}>
                <div className={'w-[200px]'}>
                    <Select
                        value={filters.type}
                        onValueChange={(value) => updateFilters({type: value})}
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
                            <label htmlFor="myBusinesses" className={'flex w-full cursor-pointer items-center p-2'}>
                                <span>Only my projects</span>
                                &nbsp;&nbsp;
                                <Input
                                    className={'w-[30px] cursor-pointer'}
                                    id="myBusinesses"
                                    type={'checkbox'}
                                    checked={data?.myProjects == 1}
                                    onChange={(e) =>
                                        updateFilters({ myProjects: e.target.checked ? 1 : 0 })
                                    }
                                />
                            </label>
                            <DialogRequestShow myRequests={data?.myRequests ?? []} unreadCount={data?.unreadCount}/>
                            {/*<CustomModalForm*/}
                            {/*    addButton={BusinessModalFormConfig.addButton}*/}
                            {/*    title={BusinessModalFormConfig.title}*/}
                            {/*    description={BusinessModalFormConfig.description}*/}
                            {/*    fields={BusinessModalFormConfig.fields}*/}
                            {/*    buttons={BusinessModalFormConfig.buttons}*/}
                            {/*    data={data}*/}
                            {/*    // setData={setData}*/}
                            {/*    // errors={errors}*/}
                            {/*    // processing={processing}*/}
                            {/*    // handleSubmit={handleSubmit}*/}
                            {/*    // open={modalOpen}*/}
                            {/*    // onOpenChange={handleModalToggle}*/}
                            {/*    // mode={mode}*/}
                            {/*/>*/}
                        </div>
                    ) : (
                        <Button disabled>Log in to add a project...</Button>
                    )}
                </div>
            </div>

            <BusinessList
                //onEdit={(project) => openModal('edit', project)}
                //onCreateRequest={(project) => openModal('create_request', project)}
                businesses={data?.businesses.data ?? []}
                //onDelete={handleDelete}
            />
            {/*<Pagination products={data?.businesses} rowPerPage={false}/>*/}
        </MainLayout>
    );
}
