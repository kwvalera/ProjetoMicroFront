import "./styles/LoginContent.css"

export default function LoginContent() { // Component do conteudo da pagina de login
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
                </form>
            </div>
        </div>
    );
}