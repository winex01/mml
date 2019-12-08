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
            if (!empty($request->email)){
                Newsletter::create([
                    'email' => $request->email
                ]);
                toastr()->success('Thank you for subscribing.');
            }else {
                toastr()->error('Please provide email to subscribe to our newsletter.');
            }
        }else {
            toastr()->success('You are already subscribe.');
        }

        return redirect('/#newsletter');
    }

}
