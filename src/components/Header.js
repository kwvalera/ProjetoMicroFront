import "./styles/Header.css"
import { useNavigate } from "react-router-dom";

export default function Header() { // Componentização do Header para evidar repetição de codigo 
    const navigate = useNavigate();
    
    return (
      <div>
        <header class="mainHeader">
        <div id="alignLogo" onClick={() => navigate("/")}>
            <img id="iconHeader" src="assets/img/csicon.png" alt="logo"/>
            <p id="labelLogo">CASA DO MICROONDAS</p>
        </div>
            <div class="buttonHeader">
                <button type="submit" onClick={() => navigate("/")}>Home</button>
                <button type="submit" onClick={() => navigate("/contato")}>Contato</button>
                <button type="submit" onClick={() => navigate("/sobre")}>Sobre</button>
            </div>
            <form class="formHeader">
                <input class="searchInput" type="text" placeholder="Procure um produto..." required/>
                <button class="searchButton" type="submit"><span class="material-symbols-outlined">search</span></button>
            </form>
            <div class="rightBtnHeader">
                <button class="loginHeader" type="submit" onClick={() => navigate("/login")}><span class="material-symbols-outlined">person</span><p>Login</p></button>
                <button class="shopCartHeader" type="submit"><span class="material-symbols-outlined">shopping_cart</span></button>
            </div>
        </header>
        <header class="sndHeader">
            <div class="categoryNav">
                <span class="material-symbols-outlined">sort</span><p>Categorias</p>
            </div>
            <div class="sndNav">
                <div onClick={() => navigate("/conserto")}>
                    <span class="material-symbols-outlined">build</span><p>Conserto</p>
                </div>
                <div onClick={() => navigate("/reforma")}>
                    <span class="material-symbols-outlined">handyman</span><p>Reforma</p>
                </div>
                <div onClick={() => navigate("/acessorios")}>
                    <span class="material-symbols-outlined">deployed_code</span><p>Acessórios</p>
                </div>
                <div onClick={() => navigate("/usados")}>
                    <span class="material-symbols-outlined">handshake</span><p>Usados</p>
                </div>
                <div onClick={() => navigate("/busca-e-entrega")}>
                    <span class="material-symbols-outlined">local_shipping</span><p>Busca e Entrega</p>
                </div>
            </div>
        </header>
      </div>
    );
}