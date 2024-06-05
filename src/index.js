import ReactDOM from 'react-dom/client';
import App from './App';

import { createBrowserRouter, RouterProvider } from "react-router-dom";

import Home from "./routes/Home";
import Contato from "./routes/Contato";
import Sobre from "./routes/Sobre";
import Login from "./routes/Login";
import ErrorPage from './routes/ErrorPage';

const routes = createBrowserRouter([ // O DOM faz com que possamos utilizar rotas para o nosso site
  {
    path: "/",
    element: <App />, // Elemento principal do site
    errorElement: <ErrorPage />, // Pagina de erro 404, caso a url nao seja encontrada
    children: [ // O children envia para o component pai <Outlet /> oq deve ser carrregado
      { path: "/",element: <Home />}, // Caminho , e o componente q deve ser carregado pela div pai
      { path: "contato", element: <Contato />},
      { path: "sobre", element: <Sobre />},
      { path: "login", element: <Login />},
    ]
  }
]);

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <RouterProvider router={routes} /> // Faz a renderização do site qnd o id="root" for chamado
);