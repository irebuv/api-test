import React, { useState, useEffect } from 'react';
import axios from 'axios';
import './App.css';
import Home from "./pages/public/home";
import { toast } from '@/components/ui/custom/sonner';
import { Routes, Route, Navigate} from "react-router-dom";
import LoginPage from "@/pages/user/login";
import Dashboard from "@/pages/user/dashboard";
import { ProtectedRoute } from "@/lib/auth/ProtectedRoute";
function App() {
    const [message, setMessage] = useState('');
    const [posts, setPosts] = useState([]);

    useEffect(() => {
        axios.get('http://first-api.loc/api/test')
            .then(response => {
                setMessage(response.data.message);
            })
            .catch(error => {
                setMessage('Ошибка подключения к API');
                console.error(error);
            });
    }, []);


    const fetchFromDB = async () => {
        try {
            const response = await axios.get('http://first-api.loc/api/posts');
            setPosts(response.data);
            toast.success('Успешно!');
        } catch (error) {
            console.error('Ошибка БД:', error);
            alert('Ошибка подключения к БД');
            toast.error('Ошибка!');
        }
    };

    return (
        <div className="App" style={{ padding: '20px' }}>
            <Routes>
                <Route path="/" element={<Navigate to="/login" replace />} />
                <Route path="/login" element={<LoginPage />} />
                <Route
                    path="/dashboard"
                    element={
                        <ProtectedRoute>
                            <Dashboard />
                        </ProtectedRoute>
                    }
                />
            </Routes>
            <h1>Моя CMS</h1>

            <div style={{
                padding: '10px',
                margin: '10px 0',
                backgroundColor: message.includes('работает') ? '#d4edda' : '#f8d7da',
                border: '1px solid #c3e6cb'
            }}>
                <strong>Статус API:</strong> {message}
            </div>

            <button onClick={fetchFromDB} style={{margin: '10px'}}>
                Загрузить из БД
            </button>
            <div className="bg-blue-500 text-white p-6 rounded-lg shadow-lg mb-8 text-center">
                <p className="text-xl font-bold">Hello Tailwind 4! 🚀</p>
                <p className="text-blue-100">Если этот блок синий - Tailwind работает!</p>
            </div>
            <div>
                <h2>Посты:</h2>
                {posts.map(post => (
                    <div key={post.id} style={{
                        border: '1px solid #ddd',
                        padding: '10px',
                        margin: '10px 0',
                        borderRadius: '5px'
                    }}>
                        <h3>{post.name}</h3>
                        <p>{post.email}</p>
                    </div>
                ))}
            </div>
            <Home />
        </div>
    );
}

export default App;