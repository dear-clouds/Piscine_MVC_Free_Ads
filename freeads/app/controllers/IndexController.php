<?php

class IndexController extends BaseController {

	public function showIndex()
	{
		$annonces = DB::table('annonces')
		->orderBy('created_at', 'desc')
		->paginate(6);

		return View::make('index', compact('annonces'));
	}


	public function showAdmin()
	{
		$annonces = Annonce::all();
		$messages = Message::all();
		$annonces = Annonce::orderBy('created_at', 'DESC')->paginate(10);
		$messages = Message::orderBy('created_at', 'DESC')->paginate(10);

		return View::make('admin', compact('annonces', 'messages'));
	}

}
