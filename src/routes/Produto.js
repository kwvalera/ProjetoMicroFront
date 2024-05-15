import { useParams } from 'react-router-dom';

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