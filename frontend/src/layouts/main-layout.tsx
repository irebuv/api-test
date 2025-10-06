import { type ReactNode } from 'react';
import MainContent from "./app-content";
import Header from "../components/shared/Header/Header";
import {Toaster} from "@/components/ui/custom/sonner";

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
            <Toaster />
            <div className={className}>
                <MainContent>{children}</MainContent>
            </div>
        </>
    );
}
