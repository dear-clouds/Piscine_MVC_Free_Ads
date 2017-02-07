@extends('layouts.master')

@section('title')
@parent
:: Message
@stop

@section('content')
</nav>

<h1>Envoyer un message</h1>

{{ HTML::ul($errors->all() )}}

{{ Form::open(array('url' => 'message')) }}


<div class="form-group">
	{{Form::label('subject','Sujet')}}
	{{Form::text('subject', null,array('class' => 'form-control'))}}
</div>

<div class="form-group">
	{{Form::label('recever','Envoyé à')}}
	{{Form::text('recever', null,array('class' => 'form-control'))}}
</div>

<div class="form-group">
	{{Form::label('body','Message')}}
	{{Form::textarea('body', null,array('class' => 'form-control'))}}
</div>

{{Form::submit('Envoyer', array('class' => 'btn btn-primary'))}}
{{ Form::close() }}

@stop