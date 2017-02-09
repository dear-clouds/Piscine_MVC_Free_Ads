@extends('layouts.master')

@section('title')
@parent
:: Home
@stop

@section('content')
 <div class="text-center">

<div class="jumbotron">
{{ Form::open(array('route' => array('annonce.search'), 'class' => 'form-inline')) }}

<div class="form-group">
	{{Form::text('keywords', null,array('class' => 'form-control', 'placeholder' => 'Mot-clés...'))}}
</div>

<div class="form-group">
	{{ Form::select('categorie', array(
	NULL => 'Toutes les catégories',
	'meubles' => 'Meubles',
    'electronique' => 'Electronique',
    'maison' => 'Maison',
    'games' => 'Jeux Vidéos',
    'litterature' => 'Littérature',
    'vetements' => 'Vêtements'
	), null, array('class' => 'form-control')) }}
</div>


<div class="form-group">
	{{Form::text('departement', null,array('class' => 'form-control', 'placeholder' => 'Département'))}}
</div>

<div class="form-group">
	{{Form::text('price', null,array('class' => 'form-control', 'placeholder' => 'Prix maximum'))}}
</div>

{{Form::submit('Chercher', array('class' => 'btn btn-primary'))}}
{{ Form::close() }}

</div>


<p><a href="annonce" class="btn btn-warning btn-lg">Voir toutes les annonces</a></p>

<br>


<div class="row-fluid">
@foreach ($annonces as $annonce)
<div class="col-lg-4">
   <a href="annonce/{{ $annonce->id }}"><img class="img-thumbnail" src="{{ $annonce->photo }}" alt="thumb" style="height:200px;"></a>
      <h3>{{ $annonce->title }}</h3>
      <p>{{ $annonce->description }}</p>

      <p><a class="btn btn-default" href="annonce/{{ $annonce->id }}" role="button">{{ $annonce->price }}€</a></p>
<br><br><br>
      </div>

      @endforeach
</div>


</div>
@stop
