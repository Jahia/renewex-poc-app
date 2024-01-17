import React from 'react';
import ReactDOM from 'react-dom/client';
import {App} from "./App";
const render = (target,context) =>{
    const root = ReactDOM.createRoot(document.getElementById(target));
    root.render(
        <React.StrictMode>
            <App />
        </React.StrictMode>
    )
}
window.renewexPoCApp = render;