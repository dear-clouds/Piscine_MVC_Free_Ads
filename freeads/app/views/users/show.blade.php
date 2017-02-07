@extends('layouts.master')

@section('title')
@parent
:: Profil
@stop

@section('content')
<h1><strong>{{ $user->username }}</strong></h1>
<p><strong>{{ $user->role }}</strong></p>


<p><strong>Username:</strong> {{ $user->username }}</p>
<p><strong>Prénom:</strong> {{ $user->name }}</p>
<p><strong>Nom:</strong> {{ $user->lastname }}</p>
<p><strong>Date de naissance:</strong> {{ $user->birthdate }}</p>
<p><strong>Date d'inscription:</strong> {{ $user->created_at }}</p>
<p><strong>Email:</strong> {{ $user->email }}</p>

<br>

<p><strong>Dernière connexion:</strong> {{ $user->updated_at }}</p>


<br><br>

<h2>Ses Annonces</h2>


@if ($annonces->count())

{{ $annonceCount->count() }} annonces.
<table class="table table-striped table-bordered">
	<thead>
		<tr>
			<th>Miniature</th>
			<th>Titre</th>
			<th>Description</th>
			<th>Prix</th>
			<th>Date d'ajout</th>
		</tr>
	</thead>

	<tbody>
		@foreach ($annonces as $annonce)
		<tr>
			<td class="miniatures"><img class="miniatures" src="../{{ $annonce->photo }}"></td>
			<td>{{ $annonce->title }}</td>
			<td>{{ $annonce->description }}</td>
			<td>{{ $annonce->price }}</td>
			<td>{{ $annonce->created_at }}</td></tr>
		@endforeach
		
	</tbody>
	
</table>

{{ $annonces->links(); }}

@else
      Ce membre n'a aucune annonce.
      @endif

@stop