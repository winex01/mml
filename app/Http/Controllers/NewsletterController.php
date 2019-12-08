<?php

namespace App\Http\Controllers;

use App\Newsletter;
use Illuminate\Http\Request;

class NewsletterController extends Controller
{
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $newsletter = Newsletter::where('email', $request->email)->first();
        if (empty($newsletter)) {
            toastr()->success('Thank you for subscribing.');
            Newsletter::create([
                'email' => $request->email
            ]);
        }else {
            toastr()->success('You are already subscribe.');
        }

        return redirect('/#newsletter');
    }

}
