import "./styles/ReformaContent.css"

export default function ReformaContent() {
    return(
        <div>
            <div class="alignBusca">
                <div class="Busca">
                    <div class="contentBusca">
                        <h1>
                            Reforma de micro-ondas
                        </h1>
                        <div class="textBusca">
                            <p>Oferecemos um serviço de reforma de alto padrão para aparelhos novos e antigos.</p>
                            <p></p>
                            <ul>
                                <li>Serviço com garantia;</li>
                                <li>Peças originais;</li>
                                <li>Limpeza técnica.</li>
                            </ul>
                            <strong>Não atendemos em domicílio!</strong>
                        </div>
                        <h2>
                            Atente-se a algumas informações:
                        </h2>
                        <ul>
                            <li>Traga o aparelho até uma de nossas lojas para a avalição;</li>
                            <li>Pagamento em até 3x no cartão.</li>
                        </ul>
                        <div>
                            <p>Para iniciar seu atendimento nos chame pelo:</p>
                            <div id="zapBusca">
                                <img id="imgZapBusca" src="assets/img/zap.png" alt="logo Whatsapp" />
                                Whatsapp
                            </div>
                        </div>
                    </div>
                    <img id="imgRef" src="assets/img/micro6.jpg" alt="foto de um microondas" />
                </div>
            </div>
        </div>
    );
}