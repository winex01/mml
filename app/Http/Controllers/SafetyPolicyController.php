<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SafetyPolicyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $section = '#why-us';
        return view('policies-others.safety-policies', compact('section'));
    }

}
