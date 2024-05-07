import Header from "./components/Header";
import Footer from "./components/Footer";
import BanRef from "./components/banners/BanRef";
import BanSam from "./components/banners/BanSam";
import Login from "./components/Login";

export default function App() {
  return (
    <div className="App">
      <Header/>
      <BanRef/>
      <Login/>
      <BanSam/>
      <Footer/>
    </div>
  );
}

// Para usar esse -> export default App; Precisa ser assim:
// function App() {}
// export default App;