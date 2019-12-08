<?php

namespace App\Http\Controllers;

use App\BusinessPermit;
use App\Client;
use App\Portfolio;
use App\Service;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $services = Service::all();
        $businessPermit = BusinessPermit::latest()->first();
        $clients = Client::all();
        $portfolios = Portfolio::all();

        $file = json_decode($businessPermit->file);
        $file = $file[0]->download_link;

        clock($portfolios);

        return view('index', compact(
            'services', 
            'file',
            'clients',
            'portfolios'
        ));
    }

   
}
