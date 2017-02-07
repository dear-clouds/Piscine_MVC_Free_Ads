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
		$projects = Project::all();
		$pages = Page::all();
		$projects = Project::orderBy('created_at', 'DESC')->paginate(10);
		$pages = Page::orderBy('created_at', 'DESC')->paginate(10);

		return View::make('admin', compact('projects', 'pages'));
	}

}