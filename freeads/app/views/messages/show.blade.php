@extends('layouts.master')

@section('title')
@parent
:: Lire le message
@stop

@section('content')


@if ( Auth::guest() )
<h2>Adieu !</h2>

@else
<p><a href="../message" class="btn btn-default btn-lg">Inbox</a></p>
<p class="form-control"><strong>De : </strong>{{ $message->sender }}</p>
<p class="form-control"><strong>Le : </strong>{{ $message->created_at }}</p>
<p class="form-control"><strong>Sujet : </strong>{{ $message->subject }}</p>
<p class="jumbotron">{{ $message->body }}</p>

<p class="pull-right"><a href="create" class="btn btn-primary btn-lg">Répondre</a></p>

@endif


<br><br>





@stop