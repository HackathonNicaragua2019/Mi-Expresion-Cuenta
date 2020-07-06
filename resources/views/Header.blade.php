<header  @if (Auth::guest()) class="header white" @endif class="header blue">
    
    <a href="{{ url('/') }}">
        <img class="logo-header" @if (Auth::guest()) src="/images/Logotipo_mi_expresion_cuenta_blue.png"@endif src="/images/logo-Mi-Expresion-cuenta-08.png" />
    </a>
    <nav class="navbar">
        <a class="McButton" id="McButton">
            <b class="" id="McBar1"></b>
            <b id="McBar2"></b>
            <b class="" id="McBar3"></b>
        </a>
        <ul class="items">
            @auth
            <li>{{ Auth::user()->name }}</li>
            <li class="user"><img class="icon-user" src="/images/user.svg"/></li>
            @endauth
            @if (Auth::guest())
            <li ><a href="{{ route('login') }}" class="blue bold marginlogin">Iniciar sesión</a></li>
            <li ><a href="{{ route('register') }}" class="blue bold" >Registrarte</a></li>
            @endif
        </ul>
        @auth
        <ul class="subitems">
            <li><a href="{{ route('logout') }}"
                    onclick="event.preventDefault();
                    document.getElementById('logout-form').submit();">
            Salir </a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                                    {{ csrf_field() }}
                </form>
            </li>
        </ul>
        @endauth
    </nav>
</header>


<!--<nav class="navbar navbar-default navbar-static-top">
                <div class="container">
                    <div class="navbar-header">
    
                         Collapsed Hamburger
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse">
                            <span class="sr-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
    
                        Branding Image
                        <a class="navbar-brand" href="{{ url('/home') }}">
                             {{ config('app.name', 'Mi Expresión Cuenta') }} 
                            <img class="logo-header" src="/images/logo-Mi-Expresion-cuenta-08.png"/>
                        </a>
                    </div>
    
                    <div class="collapse navbar-collapse" id="app-navbar-collapse">
                         Left Side Of Navbar
                        <ul class="nav navbar-nav">
                            &nbsp;
                        </ul>
    
                        Right Side Of Navbar
                        <ul class="nav navbar-nav navbar-right">
                            Authentication Links
                            @if (Auth::guest())
                                <li><a href="{{ route('login') }}">Login</a></li>
                                <li><a href="{{ route('register') }}">Register</a></li>
                            @else
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                        {{ Auth::user()->name }} <span class="caret"></span>
                                    </a>
    
                                    <ul class="dropdown-menu" role="menu">
                                        <li>
                                            <a href="{{ route('logout') }}"
                                                onclick="event.preventDefault();
                                                         document.getElementById('logout-form').submit();">
                                                Logout
                                            </a>
    
                                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                                {{ csrf_field() }}
                                            </form>
                                        </li>
                                    </ul>
                                </li>
                            @endif
                        </ul>
                    </div>
                </div>
            </nav>