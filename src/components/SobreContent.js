import SocialSection from "./SocialSection";
import "./styles/SobreContent.css"

export default function SobreContent() {
    return (
        <div>
            <p id="titleSobre">Sobre nós</p>
            <div class="sobre">
                <div class="contentSobre">
                    <div class="logoSobre">
                        <div>
                            <img src="assets/img/csicon.png" alt="logo"/>
                            <p>CASA DO MICROONDAS</p>
                        </div>
                    </div>
                    
                    <div class="alignSobre">
                        <p id="subTitleSobre">Endereço:</p>
                        <div class="containerSobre">Opção 1 - Avenida Presidente Kennedy, 410 - Rebouças</div>
                        <div class="containerSobre">Opção 2 - Rua Saturnino Miranda, 84 - Santa Felicidade</div>
                    </div>
                    <div class="alignSobre">
                        <p id="subTitleSobre">Telefone:</p>
                        <div class="linha1">
                            <div class="containerSobre">(41) 3332-8000</div>
                        </div>
                    </div>
                    <div class="alignSobre">
                        <p id="subTitleSobre">Whatsapp:</p>
                        <div class="linha2">
                            <div class="containerSobre">Opção 1 - (41) 98516-3600</div>
                            <div class="containerSobre">Opção 2 - (41) 98516-3602</div>
                        </div>
                    </div>
                    <div class="alignSobre">
                        <p id="subTitleSobre">Redes sociais:</p>
                        <SocialSection />
                    </div>
                </div>
            </div>
        </div>
    );
}