import ReactDOM from 'react-dom/client';
import App from './App';

import { createBrowserRouter, RouterProvider } from "react-router-dom";

import Home from "./routes/Home";
import Contato from "./routes/Contato";
import Sobre from "./routes/Sobre";
import Login from "./routes/Login";
import Produto from './routes/Produto';
import ErrorPage from './routes/ErrorPage';

const routes = createBrowserRouter([
  {
    path: "/",
    element: <App />,
    errorElement: <ErrorPage />,
    children: [
      { path: "/",element: <Home />,title: ""},
      { path: "contato", element: <Contato />,title: "Contato"},
      { path: "sobre", element: <Sobre />,title: "Sobre"},
      { path: "login", element: <Login />,title: "Login"},
      { path: "/produto/:id", element: <Produto />,title: "Produto"},
    ]
  }
]);

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <RouterProvider router={routes} />
);