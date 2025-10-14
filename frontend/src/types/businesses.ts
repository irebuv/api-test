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

export interface PaginatedResponse<T> {
    data: T[];
    to: number | null;
    total: number;
}

export interface BusinessResponse {
    businesses: PaginatedResponse<Business>;
    types?: string[];
    unreadCount?: number;
}