import "./styles/Header.css"
import { useNavigate } from "react-router-dom";

export default function Header() { // Componentização do Header para evidar repetição de codigo 
    const navigate = useNavigate();

    return (
        <div>
            <div class="alignHeader">
                <header class="mainHeader">
                    <div id="leftContent">
                        <div id="alignLogo" onClick={() => navigate("/")}>
                            <img id="iconHeader" src="assets/img/csicon.png" alt="logo" />
                            <p id="labelLogo">CASA DO MICROONDAS</p>
                        </div>
                        <div class="navigateHeader">
                            <button type="submit" onClick={() => navigate("/")}>Home</button>
                            <button type="submit" onClick={() => navigate("/sobre")}>Sobre</button>
                            <button type="submit" onClick={() => navigate("/contato")}>Contato</button>
                        </div>
                    </div>
                    <div id="rightContent">
                        <div class="btnHeader">
                            <div class="zapHearder" onClick={() => navigate("/contato")}>
                                <img id="iconZap" src="assets/img/zap.png" alt="logo do Whatsapp" />
                                <p>Whatsapp</p>
                            </div>
                            <div class="contatoHearder" onClick={() => navigate("/contato")}>
                                <p>Orçamento</p>
                            </div>
                        </div>
                        <div class="rightBtnHeader">
                            <button class="loginHeader" type="submit" onClick={() => navigate("/login")}><span class="material-symbols-outlined">person</span><p>Login</p></button>
                        </div>
                    </div>
                </header>
            </div>
            <div class="alignSndHeader">
                <header class="sndHeader">
                    <div class="categoryNav">
                        <span class="material-symbols-outlined">sort</span><p>Serviços</p>
                    </div>
                    <div class="sndNav">
                        <div onClick={() => navigate("/acessorios")}><span class="material-symbols-outlined">deployed_code</span><p>Acessórios</p></div>
                        <div onClick={() => navigate("/busca-e-entrega")}><span class="material-symbols-outlined">local_shipping</span><p>Busca e Entrega</p></div>
                        <div onClick={() => navigate("/conserto")}><span class="material-symbols-outlined">build</span><p>Conserto</p></div>
                        <div onClick={() => navigate("/reforma")}><span class="material-symbols-outlined">handyman</span><p>Reforma</p></div>
                        <div onClick={() => navigate("/usados")}><span class="material-symbols-outlined">handshake</span><p>Usados</p></div>
                    </div>
                </header>
            </div>
        </div>
    );
}