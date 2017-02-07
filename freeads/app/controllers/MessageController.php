<?php

class MessageController extends BaseController {

	public function index()
	{
		$messages = DB::table('messages')
		->where('recever', '=', Auth::user()->username)
		->orderBy('created_at', 'desc')
		->paginate(6);

		return View::make('messages.index', compact('messages'));
	}

	public function create()
	{
		return View::make('messages.create');
	}


	public function store()
	{

		$rules = array(
			'subject'   => 'required',
			'recever'      => 'required',
			'body'   => 'required'
			);
		$validator = Validator::make(Input::all(), $rules);

		if ($validator->fails()) 
		{
			return Redirect::to('message/create')
			->withErrors($validator)
			->withInput(Input::except('password'));
		} 
		else 
		{


			$message = new Message;
			$message->subject      = Input::get('subject');
			$message->recever 	= Input::get('recever');
			$message->body = Input::get('body');
			$message->sender = Auth::user()->username;
			$message->save();

			return Redirect::to('message')->with('success', 'Votre message a bien été envoyé.');
		}
	}


	public function show($id)
	{
		$message = Message::find($id);


		$user = DB::table('users')
		->where('username', '=', $message->sender)
		->first();

		return View::make('messages.show', compact('message', 'user'));
	}


	public function edit($id)
	{

		$message = Message::find($id);

		if ($message) 
		{
			return View::make('messages.edit')
			->with('message', $message);
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
			$message = Annonce::find($id);
			$message->title       	= Input::get('title');
			$message->photo       	= Input::get('photo');
			$message->price       	= Input::get('price');
			$message->description      = Input::get('description');
			$message->categorie      = Input::get('categorie');
			$message->save();



			return Redirect::to('')->with('success', 'Votre annonce a bien été mise à jour.');
		}
	}


	public function destroy($id)
	{

		$message = Annonce::find($id);
		$path = $message->url;

		File::delete(public_path() . '/' . $path);
		$message->delete();

		return Redirect::to('profile')->with('success', 'Fichier supprimé.');
	}



	

	public function admin()
	{
		$messages = Annonce::all();
		return View::make('messages.admin', compact('messages'));
	}





}