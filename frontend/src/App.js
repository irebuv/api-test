import React, { useState, useEffect } from 'react';
import axios from 'axios';
import './App.css';
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

            <div>
                {console.log(posts)}
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
        </div>
    );
}

export default App;