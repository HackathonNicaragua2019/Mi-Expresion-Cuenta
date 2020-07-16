@extends('layouts.app')
@include('Header')
@section('content')
<<<<<<< HEAD

<section class="container-menu">
    <h1 class="title">Módulo 1</h1>
    <div class="container-menu-one">
        <a href="/moduloDeterminado"  class="container-item">
            <img class="icon-menu" src="/images/Icons_Modulo_1/icon1.svg">
            <p class="subtitle-menu">Determinantes</p>
        </a>
    </div>
    <div class="container-menu-two">
        <a href="" class="container-item">
            <img class="icon-menu" src="/images/Icons_Modulo_1/icon2.svg">
            <p class="subtitle-menu">Adjetivos</p>
        </a>
        <a href="" class="container-item">
            <img class="icon-menu" src="/images/Icons_Modulo_1/icon3.svg">
            <p class="subtitle-menu">Preposiciones</p>
        </a>
    </div>
    <div class="container-menu-one">
        <a href="" class="container-item">
            <img class="icon-menu" src="/images/Icons_Modulo_1/determinantes3.svg">
            <p class="subtitle-menu">Conectores</p>
        </a>
=======
<section class="container-menu">
    <h1 class="title">Módulo 1</h1>
    <div class="menu-item">
        <div class="container-item determinante">
            <p class="title-item">Determinantes</p>
            <span class="subtitle-item">4 clases</span>
            <div class="mimi-modal">
                <a href="/ActividadesAprender" class="container-aprender">
                    <img class="icon-aprender" src="/images/icon_aprender.svg" alt="Aprender">
                    <p>Introducción</p>
                </a>
                <a href="/moduloDeterminado" class="container-practicar">
                    <img class="icon-practicar" src="/images/icon_practicar.svg" alt="Practicar">
                    <p>Entrar</p>
                </a>
            </div>
        </div>
        <div href="" class="container-item adjetivos">
            <p class="title-item">Adjetivos</p>
            <span class="subtitle-item">4 clases</span>
            <div class="mimi-modal">
                <a href="/ActividadesAprender" class="container-aprender">
                    <img class="icon-aprender" src="/images/icon_aprender.svg" alt="Aprender">
                    <p>Introducción</p>
                </a>
                <a href="/moduloDeterminado" class="container-practicar">
                    <img class="icon-practicar" src="/images/icon_practicar.svg" alt="Practicar">
                    <p>Entrar</p>
                </a>
            </div>
            
        </div>
    </div>
    <div class="menu-item">
        <div href="" class="container-item preposiciones">
            <p class="title-item">Preposiciones</p>
            <span class="subtitle-item">4 clases</span>
            <div class="mimi-modal">
                <a href="/ActividadesAprender" class="container-aprender">
                    <img class="icon-aprender" src="/images/icon_aprender.svg" alt="Aprender">
                    <p>Introducción</p>
                </a>
                <a href="/moduloDeterminado" class="container-practicar">
                    <img class="icon-practicar" src="/images/icon_practicar.svg" alt="Practicar">
                    <p>Entrar</p>
                </a>
            </div>
        </div>
        <div href="" class="container-item conectores">
            <p class="title-item">Conectores</p>
            <span class="subtitle-item">4 clases</span>
            <div class="mimi-modal">
                <a href="/ActividadesAprender" class="container-aprender">
                    <img class="icon-aprender" src="/images/icon_aprender.svg" alt="Aprender">
                    <p>Introducción</p>
                </a>
                <a href="/moduloDeterminado" class="container-practicar">
                    <img class="icon-practicar" src="/images/icon_practicar.svg" alt="Practicar">
                    <p>Entrar</p>
                </a>
            </div>

        </div>
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98
    </div>
</section>
@endsection
