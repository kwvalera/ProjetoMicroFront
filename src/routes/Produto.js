import { useParams } from 'react-router-dom'; /* O useParamns pega informações da url da pagina nesse caso o id, e usamos para exibir na tela ou puxar o elemento pelo id no banco */

export default function Produto(props) {
    const { id } = useParams();

    return (
        <div>
            <main>
                <div style={{display: "flex", justifyContent: "center"}}>
                    <p style={{fontSize: 40}}>pdt-{id}</p>
                </div>
            </main>
        </div>
    );
}