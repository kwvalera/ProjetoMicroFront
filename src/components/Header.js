import "./Header.css"

export default function Header() {
    return (
      <div>
        <header class="mainHeader">
        <div id="alignLogo">
            <img id="iconHeader" src="assets/img/csicon.png" alt="logo" onclick="openURL('index.html')"/>
            <p id="labelLogo">CASA DO MICROONDAS</p>
        </div>
            <div class="buttonHeader">
                <button type="submit" onclick="openPage('index.html')">Home</button>
                <button type="submit" onclick="openPage('contato.html')">Contato</button>
                <button type="submit" onclick="scrollToBottom()">Sobre</button>
            </div>
            <form class="formHeader">
                <input class="searchInput" type="text" placeholder="Procure um produto..." required/>
                <button class="searchButton" type="submit"><span class="material-symbols-outlined">search</span></button>
            </form>
            <div class="rightBtnHeader">
                <button class="loginHeader" type="submit" onclick="openPage('login.html')"><span class="material-symbols-outlined">person</span><p>Login</p></button>
                <button class="shopCartHeader" type="submit"><span class="material-symbols-outlined">shopping_cart</span></button>
            </div>
        </header>
        <header class="sndHeader">
            <div class="categoryNav">
                <span class="material-symbols-outlined">sort</span><p>Categorias</p>
            </div>
            <div class="sndNav">
                <div>
                    <span class="material-symbols-outlined">local_fire_department</span><p>Mais Comprados</p>
                </div>
                <div>
                    <span class="material-symbols-outlined">flash_on</span><p>Ofertas Relampago</p>
                </div>
                <div>
                    <span class="material-symbols-outlined">build</span><p>Conserto</p>
                </div>
                <div>
                    <span class="material-symbols-outlined">handyman</span><p>Reforma</p>
                </div>
                <div>
                    <span class="material-symbols-outlined">sync_alt</span><p>Aluguel</p>
                </div>
                <div>
                    <span class="material-symbols-outlined">deployed_code</span><p>Acessórios</p>
                </div>
                <div>
                    <span class="material-symbols-outlined">handshake</span><p>Usados</p>
                </div>
                <div>
                    <span class="material-symbols-outlined">local_shipping</span><p>Busca e Entrega</p>
                </div>
            </div>
        </header>
      </div>
    );
}