import "./styles/LoginContent.css"
import { useNavigate } from "react-router-dom";

export default function LoginContent() { // Component do conteudo da pagina de login
    const navigate = useNavigate();
    return (
        <div>
            <div class="login-container">
                <h2 id="titleLogin">Login</h2>
                <form id="login-form" action="login.php" method="POST">
                <div class="input-group">
                    <label for="username">Usuário:</label>
                    <input type="text" id="username" name="username" required/>
                </div>
                <div class="input-group">
                    <label for="password">Senha:</label>
                    <input type="password" id="password" name="password" required/>
                </div>
                <button class="btn-entrar-login" type="submit">Entrar</button>
                <div id="alignCadastro" onClick={() => navigate("/cadastro")}>
                    <p id="labelCadastro">Criar uma conta</p>
                </div>
                </form>
            </div>
        </div>
    );
}