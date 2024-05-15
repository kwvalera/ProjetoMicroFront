import "./Footer.css"
import { useNavigate } from "react-router-dom";

export default function Footer() {
    const navigate = useNavigate();
    
    return (
        <div>
            <footer class="footer">
                <div class="infos">
                    <div class="contentInfo">
                        <span class="material-symbols-outlined">package_2</span>
                        <div class="textContentInfo">
                            Frete gratis acima de R$ 1.000+
                            <p>Entrega em no máximo 3 dias!</p>
                        </div>
                    </div>
                    <div class="contentInfo">
                        <span class="material-symbols-outlined">workspace_premium</span>
                        <div class="textContentInfo">
                            Satisfação ou reembolso
                            <p>Devoluções gratuitas em 14 dias</p>
                        </div>
                    </div>
                    <div class="contentInfo">
                        <span class="material-symbols-outlined">headset_mic</span>
                        <div class="textContentInfo">
                            Disponíveis a todo momento
                            <p>Contate-nos por WhatsApp, Email, Telefone</p>
                        </div>
                    </div>
                    <div class="contentInfo">
                        <span class="material-symbols-outlined">credit_score</span>
                        <div class="textContentInfo">
                            Pagamentos 100% seguros
                            <p>Visa, Mastercard, Pix, PayPal</p>
                        </div>
                    </div>
                </div>
                <div class="categoriesFooter">
                    <div class="columnFooter">
                        <p>Categories</p>
                        <div>Mais Comprados</div>
                        <div>Ofertas Relampago</div>
                        <div>Conserto</div>
                        <div>Reforma</div>
                        <div>Acessórios</div>
                        <div>Usados</div>
                        <div>Serviço de Busca e Entrega</div>
                    </div>
                    <div class="columnFooter">
                        <p>Marcas Populares</p>
                        <div>Samsung</div>
                        <div>Philco</div>
                        <div>Philips</div>
                        <div>Britânia</div>
                        <div>Eletrolux</div>
                        <div>Panasonic</div>
                        <div>Brastemp</div>
                    </div>
                    <div class="columnFooter">
                        <p>Links Úteis</p>
                        <div onClick={() => navigate("/sobre")}>Sobre</div>
                        <div onClick={() => navigate("/contato")}>Contato</div>
                        <div>Central de Atendimento</div>
                        <div>Carreira</div>
                        <div>Políticas</div>
                    </div>
                    <div class="columnFooter">
                        <p>Atendimento</p>
                        <div>Pagamentos</div>
                        <div>Rastrear entrga</div>
                        <div>Devoluções de produtos</div>
                        <div>Carrinho</div>
                    </div>
                    <div class="newsletterFooter">
                        <p>Novidades</p>
                        <div>Inscreva-se para receber notificações sobre</div>
                        <div>lançamentos de produtos, ofertas especiais e</div>
                        <div>notícias.</div>
                        <form class="formFooter">
                            <input class="inputFooter" type="text" placeholder="Email..." required/>
                            <button class="inputButtonFooter" type="submit">Inscreva-se</button>
                        </form>
                        <div>
                            <p id="subTitleSocial">Redes sociais:</p>
                            <div id="iconSocial">
                                <i class="fa-brands fa-facebook fa-2xl" onclick="openLink('https://www.facebook.com')"></i>
                                <i class="fa-brands fa-twitter fa-2xl" onclick="openLink('https://twitter.com')"></i>
                                <i class="fa-brands fa-instagram fa-2xl" onclick="openLink('https://www.instagram.com')"></i>
                                <i class="fa-brands fa-linkedin fa-2xl" onclick="openLink('https://www.linkedin.com')"></i>   
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footnote" id="footnote">
                    <div class="copyright">
                        © Casa do Microondas - All Rights Reserved
                    </div>
                    <div id="alignLogo" onClick={() => navigate("/")}>
                        <img id="iconFooter" src="assets/img/csicon.png" alt="logo"/>
                        <p id="labelLogo">CASA DO MICROONDAS</p>
                    </div>
                    <div class="currency">
                        <select name="coin" id="coinInput">
                            <option value="valor1">Euro (EUR €)</option>
                            <option value="valor2" selected>Real (BRL R$)</option>
                            <option value="valor3">United States (USD $)</option>
                        </select>
                    </div>
                </div>
            </footer>
        </div>
    );
}