import { type ReactNode } from 'react';
import MainContent from "./app-content";
import Header from "../components/shared/Header/Header";

interface AppLayoutProps {
    children?: ReactNode;
    className?: string;
}

export default function MainLayout ({ children, className }: AppLayoutProps) {
    // const { flash } = usePage().props as { flash?: { success?: string; error?: string } };
    //
    // useEffect(() => {
    //     if (flash?.success) {
    //         toast.success(flash.success);
    //     }
    //     if (flash?.error) {
    //         toast.error(flash.error);
    //     }
    // }, [flash]);
    return (
        <>
            <Header></Header>
            <div className={className}>
                <MainContent>{children}</MainContent>
            </div>
        </>
    );
}
