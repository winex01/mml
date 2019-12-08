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
        Notification::route('mail', 'winnie131212592@gmail.com')
            ->notify(new ContactUs(
                'Winnie A. Damayo',
                'winnie131212592@gmail.com',
                'Lorem ipsum dolor test contact. one two three sume of the next sample expre.'
            ));

        toastr()->success('Thank you for reaching us, We will contact you soon.');
        return redirect('/#contact');

    }
}
