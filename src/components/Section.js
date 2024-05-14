import "./Section.css"

export default function Section(props) { //props é um objeto javascript quem tras title e subtitle
    return (
        <div>
            <div id="alignContent">
                <h1>{props.title}</h1>
                <section>
                    {props.children} {/*o clhidren pega tds os components q estao dentro da pai <Section /> e coloca aq*/}
                </section>
            </div>
        </div>
    );
}