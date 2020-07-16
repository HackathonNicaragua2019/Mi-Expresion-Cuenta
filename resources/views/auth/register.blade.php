@extends('layouts.app')
<<<<<<< HEAD

=======
@include('Header')
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
<!--
>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Register</div>

                <div class="panel-body">
                    <form class="form-horizontal" method="POST" action="{{ route('register') }}">
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            <label for="name" class="col-md-4 control-label">Name</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control" name="name" value="{{ old('name') }}" required autofocus>

                                @if ($errors->has('name'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label for="email" class="col-md-4 control-label">E-Mail Address</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required>

                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <label for="password" class="col-md-4 control-label">Password</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="password-confirm" class="col-md-4 control-label">Confirm Password</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    Register
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<<<<<<< HEAD
@endsection
=======
-->

>>>>>>> f4f9550ce00473f57194d4d8ee73c88b03ac9e98
