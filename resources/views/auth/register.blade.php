@extends('layouts.app')
@section('content')
<div class="background-login">
    <section class="container-copy ">
        <img class="register" src="/images/register.svg" alt="imagen de registrar">
    </section>
    <section class="container-login">
        <div class="container-form">
                            <div class="form">
                                <img class="logo-header" src="/images/logo-Mi-Expresion-cuenta-08.png"/>
                                <p class=" title">Crear Usuario</p>
                                <form class="form-horizontal" method="POST" action="{{ route('register') }}">
                                 {{ csrf_field() }}
                                    <div class="{{ $errors->has('name') ? ' has-error' : '' }}">
                                        <input id="name" type="text" class="inputs" name="name" placeholder="Nombre"  value="{{ old('name') }}" required autofocus>
                                        @if ($errors->has('name'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('name') }}</strong>
                                        </span>
                                        @endif
                                    </div>
                                    <div class="{{ $errors->has('email') ? ' has-error' : '' }}">

                                        <input id="email" type="email" class="inputs" name="email" placeholder="Correo" value="{{ old('email') }}" required>

                                        @if ($errors->has('email'))
                                            <span class="help-block">
                                                <strong>{{ $errors->first('email') }}</strong>
                                            </span>
                                        @endif
                                    </div>

                                    <div class="{{ $errors->has('password') ? ' has-error' : '' }}">

                                    <input id="password" type="password" class="inputs" name="password" placeholder="Contraseña" required>

                                    @if ($errors->has('password'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('password') }}</strong>
                                        </span>
                                    @endif
                                    </div>
                                    <div class="">
                                            <input id="password-confirm" type="password" class="inputs" name="password_confirmation" placeholder="Repetir Contraseña" required>
                                    </div>
                                    <button type="submit" class="btn login  btn-blue ">
                                        Registrar
                                    </button>
                                </form>
                            </div>
        </div>
    </section>
</div>
@endsection


