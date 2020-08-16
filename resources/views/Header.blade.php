@if (Request::is('home','login','register'))
<header  @if (Auth::guest()) class="header white" @endif class="header blue">
    
    <a href="{{ url('/home') }}">
        <img class="logo-header" @if (Auth::guest()) src="/images/Logotipo_mi_expresion_cuenta_blue.png"@endif src="/images/logo-Mi-Expresion-cuenta-08.png" />
    </a>
    <nav class="navbar">
        <a class="McButton" id="McButton">
            <b class="@if (Auth::guest()) fondo_azul @endif" id="McBar1"></b>
            <b class="@if (Auth::guest()) fondo_azul @endif"id="McBar2"></b>
            <b class="@if (Auth::guest()) fondo_azul @endif" id="McBar3"></b>
        </a>
        @if (Auth::guest())
        <ul class="invitado">
            <li ><a href="{{ route('login') }}" class="blue bold marginlogin">Iniciar sesión</a></li>
            <li ><a href="{{ route('register') }}" class="blue bold" >Registrarte</a></li>
        </ul>
        @endif
        @auth
        <ul class="items">
            <li>{{ Auth::user()->name }}</li>
            <li class="user"><img class="icon-user" src="/images/user.svg"/></li>
        </ul>
        @endauth
        <ul class="subitems">
            @auth
            <li><a href="{{ route('logout') }}"
                    onclick="event.preventDefault();
                    document.getElementById('logout-form').submit();">
            Salir </a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                                    {{ csrf_field() }}
                </form>
            </li>
            @endauth
            @if (Auth::guest())
            <li ><a href="{{ route('login') }}" class="blue bold marginlogin">Iniciar sesión</a></li>
            <li ><a href="{{ route('register') }}" class="blue bold" >Registrarte</a></li>
        </ul>
            @endif
    </nav>
</header>
@endif 
