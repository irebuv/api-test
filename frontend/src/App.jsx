import React, { useState, useEffect } from 'react';
import axios from 'axios';
import './App.css';
import Home from "./pages/public/home";
import { toast } from '@/components/ui/custom/sonner';
function App() {
    const [message, setMessage] = useState('');
    const [posts, setPosts] = useState([]);

    // Тестируем подключение к API
    useEffect(() => {
        axios.get('http://first-api.loc/test')
            .then(response => {
                setMessage(response.data.message);
            })
            .catch(error => {
                setMessage('Ошибка подключения к API');
                console.error(error);
            });
    }, []);

    toast.success('Успешно!');
    toast.error('Ошибка!');

    const fetchFromDB = async () => {
        try {
            const response = await axios.get('http://first-api.loc/posts');
            setPosts(response.data); // Покажем данные из БД вместо постов
        } catch (error) {
            console.error('Ошибка БД:', error);
            alert('Ошибка подключения к БД');
        }
    };

    return (
        <div className="App" style={{ padding: '20px' }}>
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