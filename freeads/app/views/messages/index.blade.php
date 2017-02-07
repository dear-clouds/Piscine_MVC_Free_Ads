@extends('layouts.master')

@section('title')
@parent
:: Messages
@stop

@section('content')



@if (Session::has('message'))
<div class="alert alert-info">{{ Session::get('message') }}</div>
@endif

<p class="pull-right"><a href="create" class="btn btn-default btn-lg">Envoyer un message</a></p>

 
 @if ($messages->count())
<table class="table table-striped table-bordered">
    <thead>
        <tr>
            <th>De</th>
            <th>Le</th>
            <th>Sujet</th>
            <th>Action</th>
        </tr>
    </thead>

    <tbody>
        @foreach ($messages as $message)
        <tr>
            <td>{{ $message->sender }}</td>
            <td>{{ $message->created_at }}</td>
            <td>{{ $message->subject }}</td>
            <td>
                <a href="message/{{ $message->id }}" class="btn btn-small btn-info">Lire</a>
                {{ Form::open(array('url' => 'message/' . $message->id, 'class' => 'pull-right')) }}
                {{ Form::hidden('_method', 'DELETE') }}
                {{ Form::submit('Supprimer', array('class' => 'btn btn-danger')) }}
                {{ Form::close() }}
            </td></tr>
            @endforeach

        </tbody>

    </table>

    {{ $messages->links(); }}

    @else
    Vous n'avez aucun message.
    @endif




@stop