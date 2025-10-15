import React from "react";
import {
    Dialog,
    DialogTrigger,
    DialogContent,
    DialogHeader,
    DialogTitle,
    DialogDescription,
    DialogFooter,
    DialogClose,
} from "@/components/ui/dialog";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import InputError from "@/components/ui/input-error";

type Field = {
    id: string;
    name: string;
    label: string;
    type?: string; // text, textarea, file, checkbox, etc.
    placeholder?: string;
};

type Props = {
    open: boolean;
    onOpenChange: (open: boolean) => void;
    title: string;
    description?: string;
    fields: Field[];
    data: Record<string, any>;
    setData: (name: string, value: any) => void;
    processing: boolean;
    errors: Record<string, string[]>;
    onSubmit: (e: React.FormEvent) => void; // handler от родителя
    submitLabel?: string;
};

export default function CustomModalForm({
                                            open,
                                            onOpenChange,
                                            title,
                                            description,
                                            fields,
                                            data,
                                            setData,
                                            processing,
                                            errors,
                                            onSubmit,
                                            submitLabel = "Submit",
                                        }: Props) {
    return (
        <Dialog open={open} onOpenChange={onOpenChange} modal>
            <DialogTrigger asChild>
                <Button type="button" className="cursor-pointer">{title}</Button>
            </DialogTrigger>

            <DialogContent className="sm:max-w-[640px]">
                <DialogHeader>
                    <DialogTitle>{title}</DialogTitle>
                    {description && <DialogDescription>{description}</DialogDescription>}
                </DialogHeader>

                <form onSubmit={onSubmit} className="space-y-4">
                    {fields.map((f) => (
                        <div key={f.id}>
                            <Label htmlFor={f.id}>{f.label}</Label>

                            {f.type === "textarea" ? (
                                <textarea
                                    id={f.id}
                                    name={f.name}
                                    value={data[f.name] ?? ""}
                                    onChange={(e) => setData(f.name, e.target.value)}
                                    className="w-full border rounded p-2"
                                />
                            ) : f.type === "file" ? (
                                <input
                                    id={f.id}
                                    name={f.name}
                                    type="file"
                                    onChange={(e) => setData(f.name, e.target.files ? e.target.files[0] : null)}
                                />
                            ) : (
                                <Input
                                    id={f.id}
                                    name={f.name}
                                    value={data[f.name] ?? ""}
                                    onChange={(e) => setData(f.name, e.target.value)}
                                />
                            )}

                            {errors && errors[f.name] && (
                                <InputError message={errors[f.name].join(" ")} />
                            )}
                        </div>
                    ))}

                    {errors && errors._global && <div className="text-red-600">{errors._global.join(" ")}</div>}

                    <DialogFooter>
                        <DialogClose asChild>
                            <Button type="button" variant="outline">
                                Cancel
                            </Button>
                        </DialogClose>
                        <Button type="submit" disabled={processing}>
                            {processing ? "Saving..." : submitLabel}
                        </Button>
                    </DialogFooter>
                </form>
            </DialogContent>
        </Dialog>
    );
}
