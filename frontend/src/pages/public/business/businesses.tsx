import MainLayout from "@/layouts/main-layout";
import BusinessList from "@/pages/public/business/components/business-list";
import {useEffect, useState} from "react";
import api from "@/lib/axios";
interface User {
    phone: string;
}

interface Business {
    id: number;
    user_id: number;
    image: string;
    name: string;
    type: string;
    description: string;
    user: User;
}

interface PaginatedResponse<T> {
    data: T[];
    to: number | null;
    total: number;
}

interface BusinessResponse {
    businesses: PaginatedResponse<Business>;
    types?: string[];
    unreadCount?: number;
}

export default function Businesses() {
    const [data, setData] = useState<BusinessResponse | null>(null);
    const [loading, setLoading] = useState(true);
    useEffect(() => {
        api
            .get<BusinessResponse>("/businesses")
            .then((res) => setData(res.data))
            .catch((err) => console.error(err))
            .finally(() => setLoading(false));
    }, []);

    if (loading) return <div>Loading...</div>;
    return (
        <MainLayout className="mx-auto mt-5 flex max-w-[1150px] flex-col gap-5 px-7">

            <div className={'flex items-center'}>
                <div className={'w-[200px]'}>
                    {/*<Select*/}
                    {/*    value={filters.type}*/}
                    {/*    onValueChange={(value) => updateFilters({ type: value })}*/}
                    {/*>*/}
                    {/*    <SelectTrigger>*/}
                    {/*        <SelectValue placeholder={`All`}></SelectValue>*/}
                    {/*    </SelectTrigger>*/}
                    {/*    <SelectContent>*/}
                    {/*        <SelectItem value="all">All</SelectItem>*/}
                    {/*        {types.map((el) => (*/}
                    {/*            <SelectItem key={el} value={el}>{el}</SelectItem>*/}
                    {/*        ))}*/}
                    {/*    </SelectContent>*/}
                    {/*</Select>*/}
                </div>
                <div className="ml-auto">
                    {/*{auth.user ? (*/}
                    {/*    <div className="flex items-center gap-3">*/}
                    {/*        <label htmlFor="myBusinesses" className={'flex w-full cursor-pointer items-center p-2'}>*/}
                    {/*            <span>Only my projects</span>*/}
                    {/*            &nbsp;&nbsp;*/}
                    {/*            <Input*/}
                    {/*                className={'w-[30px] cursor-pointer'}*/}
                    {/*                id="myBusinesses"*/}
                    {/*                type={'checkbox'}*/}
                    {/*                checked={myProjects == 1}*/}
                    {/*                onChange={(e) =>*/}
                    {/*                    updateFilters({ myProjects: e.target.checked ? 1 : 0 })*/}
                    {/*                }*/}
                    {/*            />*/}
                    {/*        </label>*/}
                    {/*        <DialogRequestShow myRequests={myRequests} unreadCount={unreadCount}/>*/}
                    {/*        <CustomModalForm*/}
                    {/*            addButton={BusinessModalFormConfig.addButton}*/}
                    {/*            title={mode === 'create_request' ? BusinessModalFormRequest.title : BusinessModalFormConfig.title}*/}
                    {/*            description={mode === 'create_request' ? BusinessModalFormRequest.description : BusinessModalFormConfig.description}*/}
                    {/*            fields={mode === 'create_request' ? BusinessModalFormRequest.fields : BusinessModalFormConfig.fields}*/}
                    {/*            buttons={BusinessModalFormConfig.buttons}*/}
                    {/*            data={data}*/}
                    {/*            setData={setData}*/}
                    {/*            errors={errors}*/}
                    {/*            processing={processing}*/}
                    {/*            handleSubmit={handleSubmit}*/}
                    {/*            open={modalOpen}*/}
                    {/*            onOpenChange={handleModalToggle}*/}
                    {/*            mode={mode}*/}
                    {/*            previewImage={previewImage}*/}
                    {/*        />*/}
                    {/*    </div>*/}
                    {/*) : (*/}
                    {/*    <Button disabled>Log in to add a project...</Button>*/}
                    {/*)}*/}
                </div>
            </div>

            <BusinessList
                //onEdit={(project) => openModal('edit', project)}
                //onCreateRequest={(project) => openModal('create_request', project)}
                businesses={data?.businesses.data ?? []}
                //onDelete={handleDelete}
            />
            {/*<Pagination products={businesses} rowPerPage={false} />*/}
        </MainLayout>
    );
}
