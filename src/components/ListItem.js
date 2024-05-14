import "./ListItem.css"

export default function ListItem(props) {
    return (
        <div>
            <div class="container">
                <div>
                    <div class="imgContainer">
                        <img src={props.imgSrc} alt={props.alt} />
                    </div>
                    <div class="pdtTitle">{props.titlePdt}</div>
                    <div class="price">{props.pricePdt}</div>
                </div>
                <button class="buttonContainer"><p>COMPRAR</p><span class="material-symbols-outlined">shopping_cart</span></button>
            </div>
        </div>
    );
}