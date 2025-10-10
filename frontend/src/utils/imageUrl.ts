const API_BASE_URL = "http://first-api.loc";

export const imageUrl = (path?: string) => {
    if (!path) return "";
    return `${API_BASE_URL}/storage/${path}`;
};
