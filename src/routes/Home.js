import BanRef from "../components/banners/BanRef";
import Section from "../components/Section";
import ItemContainer from "../components/ItemContainer";
import BanMarcas from "../components/banners/BanMarcas";

const itemListData = [
  {
    imgSrc: "assets/img/micro2.png",
    alt: "imagem do produto",
    titlePdt: "Micro-ondas Philco Espelhado 37L",
    pricePdt: "R$ 529.95",
    idPdt: 1
  },
  {
    imgSrc: "assets/img/micro2.png",
    alt: "imagem do produto",
    titlePdt: "Micro-ondas Philco Espelhado 37L",
    pricePdt: "R$ 529.95",
    idPdt: 2
  },
  {
    imgSrc: "assets/img/micro2.png",
    alt: "imagem do produto",
    titlePdt: "Micro-ondas Philco Espelhado 37L",
    pricePdt: "R$ 529.95",
    idPdt: 3
  },
  {
    imgSrc: "assets/img/micro2.png",
    alt: "imagem do produto",
    titlePdt: "Micro-ondas Philco Espelhado 37L",
    pricePdt: "R$ 529.95",
    idPdt: 4
  },
  {
    imgSrc: "assets/img/micro2.png",
    alt: "imagem do produto",
    titlePdt: "Micro-ondas Philco Espelhado 37L",
    pricePdt: "R$ 529.95",
    idPdt: 5
  }
]

const maisVistoListData = [
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

export default function Home() {
  return (
    <div>
      <main>
        <BanRef />

        <Section title="Mais vistos">
          {// O .map sempre retorna na Section um novo arrey. Cada elemento desse arrey novo contem o ListItem
            itemListData.map(function (item) {
              return (
                <ItemContainer
                  imgSrc={item.imgSrc}
                  alt={item.alt}
                  titlePdt={item.titlePdt}
                  pricePdt={item.pricePdt}
                  idPdt={item.idPdt}
                />
              );
            })
          }
        </Section>

        <BanMarcas />

        <Section title="Mais Comprados">
          {
            maisVistoListData.map(function (item) {
              return (
                <ItemContainer
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
    </div>
  );
}