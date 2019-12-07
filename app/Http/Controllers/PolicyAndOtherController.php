<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PolicyAndOtherController extends Controller
{
    protected $section;
    protected $folder;

    public function __construct()
    {

        $this->folder = 'policies-others';
        $this->section = '#why-us';
    }

    public function safetyPolicies()
    {
        //
        return view($this->folder.'.safety-policies', [
            'section' => $this->section
        ]);
    }

    public function qualityPolictyStatement()
    {
        return view($this->folder.'.quality-policy-statement', [
            'section' => $this->section
        ]);
    }

    public function organizationalChart()
    {
        return view($this->folder.'.organizational-chart', [
            'section' => $this->section
        ]);   
    }

}
