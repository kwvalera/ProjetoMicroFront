import "./styles/BanMarcas.css"

export default function BanMarcas() {
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