<?php

namespace App\Http\Controllers;

use App\Portfolio;
use Illuminate\Http\Request;

class PortfolioController extends Controller
{
    protected $section;

    public function __construct()
    {
        $this->section = '#portfolio';
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $portfolio = Portfolio::where('id', $id)->firstOrFail();
        clock($portfolio);
        return view('portfolio.portfolio', [
            'portfolio' => $portfolio,
            'section' => $this->section
        ]);
    }

}
