import React from 'react';
import './App.css';
import Home from "./pages/public/home";
import {Routes, Route} from "react-router-dom";
import Dashboard from "@/pages/user/dashboard";
import Login from "@/pages/user/login";
import Businesses from "@/pages/public/businesses";
function App() {

    return (
        <div className="App" style={{ padding: '20px' }}>
                <Routes>
                    {/* страницы без авторизации */}
                    <Route path="/login" element={<Login />} />
                    <Route path="/*" element={<Home />} />
                    <Route path="/business/*" element={<Businesses />} />
                    <Route path="/dashboard/*" element={<Dashboard />} />

                    {/* 404 */}
                    {/*<Route path="*" element={<NotFound />} />*/}
                </Routes>
        </div>
    );
}

export default App;