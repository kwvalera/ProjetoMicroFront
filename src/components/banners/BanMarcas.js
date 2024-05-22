import "./styles/BanMarcas.css";
import { useEffect } from "react";
import { useNavigate } from "react-router-dom";

export default function BanMarcas() {
    const navigate = useNavigate();
    useEffect(() => {
        const listaMarcas = document.querySelectorAll(".logosBanMarcas div"); // retorna uma lista de todos os elementos a div dentro do contêiner logosBanMarcas.
        const urlMarcas = { // mapeia IDs para URLs específicas. É utilizado para determinar para onde o usuário deve ser redirecionado.
            "brasIcon": "/brastemp", // "Keys": "Values",
            "eleIcon": "/electrolux",
            "lgIcon": "/lg",
            "panaIcon": "/panasonic",
            "philcoIcon": "/philco",
            "samIcon": "/samsung"
        };

        listaMarcas.forEach(div => { // adiciona um event listener de clique a cada div dentro do contêiner logosBanMarcas. Por isso o listaMarcas antes do forEach.
            div.addEventListener("click", function() { // qnd a div for clicada , execute a function() {}
                const id = this.id; // this se refere a div com id que foi clicada. 
                if (urlMarcas[id]) { // Verifica se o id é uma key no urlMarcas. Se ele for usa navigate() para redirecionar o usuário para a URL correspondente.
                    navigate(urlMarcas[id]);
                }
            });
        });
    });

    return (
        <div>
            <div class="alignBanner">
                <div class="banMarcas">
                    <div class="textBanMarcas">
                        <div class="titleBanMarcas">
                            <h1>PRINCIPAIS MARCAS</h1>
                            <h1>QUE TRABALHAMOS</h1>
                        </div>
                        <div id="descBanMarcas">
                            <p>Saiba mais sobre todas as empresas </p>
                            <p>e produtos com que trabalhamos</p>
                        </div>
                        <div>
                            <div class="btnBanner">
                                <p>CLIQUE AQUI</p><span class="material-symbols-outlined">north_east</span>
                            </div>
                        </div>
                    </div>
                    <div class="logosBanMarcas">
                        <section class="secitonMarcas">
                            <div id="brasIcon"><img src="assets/img/brasIcon.png" alt="logo da Brastemp"/></div>
                            <div id="eleIcon"><img src="assets/img/electroIcon.png" alt="logo da Electrolux"/></div>
                            <div id="lgIcon"><img src="assets/img/lgIcon.png" alt="logo da LG"/></div>
                        </section>
                        <section class="secitonMarcas">
                            <div id="panaIcon"><img src="assets/img/panasonicIcon.jpg" alt="logo da Panasonic"/></div>
                            <div id="philcoIcon"><img src="assets/img/philcoIcon.png" alt="logo da Philco"/></div>
                            <div id="samIcon"><img src="assets/img/samIcon.jpg" alt="logo da Samsung"/></div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    );
}