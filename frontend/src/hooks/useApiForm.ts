import { useState } from "react";
import axios, { AxiosError } from "axios";

type Errors = Record<string, string[]>;

export function useApiForm<T extends Record<string, any>>(initial: T) {
    const [data, setDataState] = useState<T>(initial);
    const [errors, setErrors] = useState<Errors>({});
    const [processing, setProcessing] = useState(false);

    const setField = (name: keyof T | string, value: any) => {
        setDataState(prev => ({ ...(prev as any), [name]: value }));
    };

    const reset = (newValues?: T) => {
        setDataState(newValues ?? initial);
        setErrors({});
        setProcessing(false);
    };

    const submit = async (
        url: string,
        method: "post" | "put" | "patch" | "delete" = "post",
        options?: { onSuccess?: (res: any) => void; asFormData?: boolean }
    ) => {
        setProcessing(true);
        setErrors({});

        try {
            let payload: any;
            let headers: Record<string,string> = {};

            if (options?.asFormData) {
                const form = new FormData();
                Object.entries(data).forEach(([k, v]) => {
                    if (v === undefined || v === null) return;
                    if (v instanceof File) {
                        form.append(k, v);
                    } else if (Array.isArray(v)) {
                        v.forEach(item => form.append(`${k}[]`, item));
                    } else {
                        form.append(k, v);
                    }
                });
                payload = form;
                headers["Content-Type"] = "multipart/form-data";
            } else {
                payload = data;
                headers["Content-Type"] = "application/json";
            }

            const res = await axios.request({
                url,
                method,
                data: payload,
                headers,
            });

            options?.onSuccess?.(res.data);
            return res.data;
        } catch (err) {
            const e = err as AxiosError<any>;
            if (e.response?.data?.errors) {
                setErrors(e.response.data.errors);
            } else if (e.response?.data?.message) {
                setErrors({ _global: [e.response.data.message] });
            } else {
                setErrors({ _global: ["Ошибка сервера"] });
            }
            throw err;
        } finally {
            setProcessing(false);
        }
    };

    return {
        data,
        setData: setField,
        reset,
        errors,
        processing,
        submit,
    };
}
