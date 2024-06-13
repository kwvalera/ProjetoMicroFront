import BanBusca from "./banners/BanBusca";
import "./styles/BuscaContent.css"

export default function BuscaContent() {
    return(
        <div>
            <BanBusca />

            <div class="alignBusca">
                <div class="Busca">
                    <div class="contentBusca">
                        <h1>
                            Serviço de busca e entrega em Curitiba
                        </h1>
                        <div class="textBusca">
                            <p>Buscamos o seu microondas em sua casa para conserto. Ao optar pelo serviço de busca e entrega não</p>
                            <p>realizaremos o conserto em 30 minutos por questões de logistica. Mas mantemos nossos padrões:</p>
                            <ul>
                                <p>Serviço com garantia.</p>
                                <p>Peças originais.</p>
                                <p>Limpeza técnica</p>
                            </ul>
                        </div>
                        <h2>
                            Requisitos para o serviço de busca e entrega:
                        </h2>
                        <ul>
                            <li>Estar localizado em Curitiba</li>
                            <li>Não atendemos as regiões metropolitanas</li>
                            <li>Ter disponibilidade em horario comercial para a busca e entrega do aparelho</li>
                            <li>Estar disposto a ficar sem o microondas por no minimo 2 dias</li>
                        </ul>
                        <div>
                            <p>Para utilizar o serviço de busca e entrega basta nos contatar pelo Whatsapp e proseguir</p>
                            <p>com o atendimento.</p>
                            <div id="zapBusca">
                                <img id="imgZapBusca" src="assets/img/zap.png" alt="logo Whatsapp" />
                                Whatsapp
                            </div>
                        </div>
                    </div>
                    <img id="imgBusca" src="assets/img/entrega1.png" alt="foto de um microondas" />
                </div>
            </div>
        </div>
    );
}