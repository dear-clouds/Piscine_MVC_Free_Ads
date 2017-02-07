@extends('layouts.master')

@section('title')
@parent
:: Inscription
@stop

@section('content')
</nav>

<h1>Inscription</h1>

{{ HTML::ul($errors->all() )}}

{{ Form::open(array('url' => 'users')) }}

<div class="form-group">
	{{Form::label('username','Nom d\'utilisateur*')}}
	{{Form::text('username', null,array('class' => 'form-control'))}}
</div>

<div class="form-group">
	{{Form::label('email','Email*')}}
	{{Form::text('email', null,array('class' => 'form-control'))}}
</div>
<div class="form-group">
	{{Form::label('password','Mot de passe*')}}
	{{Form::password('password',array('class' => 'form-control'))}}
</div>

<div class="form-group">
	{{Form::label('departement','Département*')}}
	{{Form::text('departement', null,array('class' => 'form-control'))}}
</div>

<div class="form-group">
	{{Form::label('name','Prénom')}}
	{{Form::text('name', null,array('class' => 'form-control'))}}
</div>
<div class="form-group">
	{{Form::label('lastname','Nom')}}
	{{Form::text('lastname', null,array('class' => 'form-control'))}}
</div>
<div class="form-group">
	{{Form::label('birthdate','Date de naissance')}}
	{{Form::input('date', 'birthdate', null,array('class' => 'form-control'))}}
</div>

{{Form::submit('Inscription', array('class' => 'btn btn-primary'))}}
{{ Form::close() }}

@stop