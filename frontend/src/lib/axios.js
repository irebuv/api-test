import axios from "axios";

const api = axios.create({
    baseURL: "http://first-api.loc",
    withCredentials: true,
});

api.interceptors.response.use(
    (response) => {
        if (response.data?.message) {
            toast.success(response.data.message);
        }
        return response;
    },
    (error) => {
        const message =
            error.response?.data?.message || "Ошибка при выполнении запроса";
        toast.error(message);
        return Promise.reject(error);
    }
);

export default api;
