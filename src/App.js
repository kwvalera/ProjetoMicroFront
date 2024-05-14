import Header from "./components/Header";
import Footer from "./components/Footer";
import BanRef from "./components/banners/BanRef";
// import BanSam from "./components/banners/BanSam";
// import Login from "./components/Login";
import Section from "./components/Section";
import ListItem from "./components/ListItem";

const itemListData = [
  {
    imgSrc: "assets/img/micro2.png",
    alt: "imagem do produto",
    titlePdt: "Micro-ondas Philco Espelhado 37L",
    pricePdt: "R$ 529.95"
  },
  {
    imgSrc: "assets/img/micro2.png",
    alt: "imagem do produto",
    titlePdt: "Micro-ondas Philco Espelhado 37L",
    pricePdt: "R$ 529.95"
  },
  {
    imgSrc: "assets/img/micro2.png",
    alt: "imagem do produto",
    titlePdt: "Micro-ondas Philco Espelhado 37L",
    pricePdt: "R$ 529.95"
  },
  {
    imgSrc: "assets/img/micro2.png",
    alt: "imagem do produto",
    titlePdt: "Micro-ondas Philco Espelhado 37L",
    pricePdt: "R$ 529.95"
  },
  {
    imgSrc: "assets/img/micro2.png",
    alt: "imagem do produto",
    titlePdt: "Micro-ondas Philco Espelhado 37L",
    pricePdt: "R$ 529.95"
  }
]

export default function App() {
  return (
    <div className="App">
      <Header />

      <main>
        <BanRef />
        <Section title="Mais vistos">
          
          { //as chaves trocam aquele pedaço de codigo por javascript, por isso oq esta dentro do return nao é 100% html, é jsx
            //o .map sempre retorna em algum lugar um novo arrey. Cada elemento desse arrey novo contem o ListItem
          itemListData.map(function(item) {
            return (
              <ListItem 
                imgSrc={item.imgSrc} 
                alt={item.alt}
                titlePdt={item.titlePdt}
                pricePdt={item.pricePdt}
              />
            );
          })
          }

        </Section>
      </main>

      <Footer />
    </div>
  );
}