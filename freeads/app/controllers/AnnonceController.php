<?php

class AnnonceController extends BaseController {

	public function index()
	{
		$annonces = DB::table('annonces')
		->orderBy('created_at', 'desc')
		->paginate(6);



		return View::make('annonces.index', compact('annonces'));
	}

	public function create()
	{
		return View::make('annonces.create');
	}


	public function store()
	{

		$rules = array(
			'title'   => 'required',
			'description'      => 'required',
			'price'   => 'required'
			);
		$validator = Validator::make(Input::all(), $rules);

		if ($validator->fails()) {
			return Redirect::to('annonce/create')
			->withErrors($validator)
			->withInput(Input::except('password'));
		}
		else {


			$annonce = new Annonce;
			$annonce->title      = Input::get('title');
			$annonce->photo 	= Input::get('photo');
			$annonce->price = Input::get('price');
			$annonce->description = Input::get('description');
			$annonce->user_id = Auth::user()->id;
			$annonce->username = Auth::user()->username;
			$annonce->departement = Auth::user()->departement;
			$annonce->categorie      = Input::get('categorie');
			$annonce->save();

			return Redirect::to('')->with('success', 'Votre annonce a bien été postée.');
		}
	}


	public function show($id)
	{
		$annonce = Annonce::find($id);


		$user = DB::table('users')
		->where('username', '=', $annonce->username)
		->first();

		return View::make('annonces.show', compact('annonce', 'user'));
	}


	public function edit($id)
	{

		$annonce = Annonce::find($id);

		if ($annonce)
		{
			return View::make('annonces.edit')
			->with('annonce', $annonce);
		}
		else
		{
			return Redirect::to('')->with('error', 'Vous ne pouvez pas faire ça.');
		}
	}


	public function update($id)
	{
		$rules = array(
			'title'       => 'required',
			'description'      => ''
			);
		$validator = Validator::make(Input::all(), $rules);


		if ($validator->fails()) {
			return Redirect::to('annonce/' . $id . '/edit')
			->withErrors($validator)
			->withInput(Input::except('password'));
		}
		else
		{
			$annonce = Annonce::find($id);
			$annonce->title       	= Input::get('title');
			$annonce->photo       	= Input::get('photo');
			$annonce->price       	= Input::get('price');
			$annonce->description      = Input::get('description');
			$annonce->categorie      = Input::get('categorie');
			$annonce->save();



			return Redirect::to('')->with('success', 'Votre annonce a bien été mise à jour.');
		}
	}


	public function destroy($id)
	{

		$annonce = Annonce::find($id);
		$path = $annonce->url;

		File::delete(public_path() . '/' . $path);
		$annonce->delete();

		return Redirect::to('profile')->with('success', 'Fichier supprimé.');
	}



	public function postSearch()
	{
		$results = DB::table('annonces');

		if(Input::get('keywords'))
			$results->where('title', 'LIKE', '%' . Input::get('keywords') . '%')
							->orWhere('description', 'LIKE', '%' . Input::get('keywords') . '%');

		if(Input::get('categorie'))
			$results->where('categorie', '=', Input::get('categorie'));

		if(Input::get('departement'))
			$results->where('departement', 'LIKE', '%' . Input::get('departement') . '%');

		if(Input::get('price'))
			$results->where('price', '<=', Input::get('price'));

		$results = $results->get();

		return View::make('annonces.search', compact('results'));
	}



	public function admin()
	{
		$annonces = Annonce::all();
		return View::make('annonces.admin', compact('annonces'));
	}





}
