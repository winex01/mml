<?php

namespace App\Http\Controllers;

use App\Notifications\ContactUs;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Notification;

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
        Notification::route('mail', setting('company.email'))
            ->notify(new ContactUs(
                $request->name,
                $request->email,
                $request->message
            ));

        toastr()->success('Thank you for reaching us, We will contact you soon.');
        return redirect('/#contact');

    }
}
