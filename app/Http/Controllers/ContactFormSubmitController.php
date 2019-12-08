<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ContactFormSubmitController extends Controller
{
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Notification::route('mail', config('mail.contact_us'))
        //     ->notify(new ContactUs(
        //         $request->name,
        //         $request->email,
        //         $request->message
        //     ));

        toastr()->success('Thank you for reaching us, We will contact you soon.');
        return redirect()->back();

    }
}