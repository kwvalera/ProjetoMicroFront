import "./Banners.css"
import "./BanRef.css"
import { useNavigate } from "react-router-dom";

export default function BanRef() {
    const navigate = useNavigate();
    
    return (
        <div>
            <div class="alignBanner">
                <div class="banner" id="bannRefColor" onClick={() => navigate('/reforma')}>
                    <div class="btnBanner" id="btnBannerRef">
                        <p>CLIQUE AQUI</p><span class="material-symbols-outlined">north_east</span>
                    </div>
                </div>
            </div>    
        </div>
    );
}