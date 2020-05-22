@extends('layouts.app')
@section('content')
<div class="background-login">
    
    <section class="container-copy-login">
        <img class="img login" src="/images/login.jpg"/>
    </section>
    <section class="container-login">
        <div class="container-form">
                            <div class="form">
                                <img class="logo-header" src="/images/logo-Mi-Expresion-cuenta-08.png"/>
                                <p class=" title">Iniciar sesión</p>
                                <form class="" method="POST" action="{{ route('login') }}">
                                    {{ csrf_field() }}

                                    <div class="{{ $errors->has('email') ? ' has-error' : '' }}">
                                            <input id="email" type="email" class="inputs" name="email" placeholder="Usuario" value="{{ old('email') }}" required autofocus>

                                            @if ($errors->has('email'))
                                                <span class="help-block">
                                                    <strong>{{ $errors->first('email') }}</strong>
                                                </span>
                                            @endif
                                    </div>

                                    <div class=" {{ $errors->has('password') ? ' has-error' : '' }}">
                                            <input id="password" type="password" class="inputs" name="password" placeholder="Contraseña" required>

                                            @if ($errors->has('password'))
                                                <span class="help-block">
                                                    <strong>{{ $errors->first('password') }}</strong>
                                                </span>
                                            @endif
                                    </div>
                                <!--
                                    <label class="remember">
                                            <input type="radio" name="remember" {{ old('remember') ? 'checked' : '' }}> Recordar contraseña
                                    </label>
                                     <a class="btn btn-link" href="{{ route('password.request') }}">
                                        Forgot Your Password?
                                    </a>
                                    -->
                                    <button type="submit" class="btn login  btn-blue ">
                                        Ingresar
                                    </button>
                                </form>
                            </div>
        </div>
    </section>
</div>
@endsection
