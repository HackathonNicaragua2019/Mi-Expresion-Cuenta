<header class="header activity">
    <a href="{{ URL::previous() }}" class="icons-container" @if (Request::is('home')) style="visibility :hidden " @endif>
        <img class="logo-header" src="/images/icon_back.svg"/>
        <span class="atras">Atras</span>
    </a>
    <div class="icons-container">
        <div class="icons">
            <span class="pistas">Pistas</span>
            <img class="logo-header idea" src="/images/icon_idea.svg"/>
        </div>
        <div class="content-pistas">
            <img id="icon-pistas" class="icon-aprender" src="/images/icon_aprender.svg" alt="Aprender">
            <p id="texto-pistas">Selecciona el botón de <strong> Introducción </strong> para informarte sobre el tema.</p>
        </div>
    </div>
</header>
