<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', 'HomeController@index')->name('home');
Route::get('/safety-policies/', 'PolicyAndOtherController@safetyPolicies')->name('safety.policies');
Route::get('/quality-policy-statement/', 'PolicyAndOtherController@qualityPolictyStatement')->name('quality.policy.statement');
Route::get('/organizational-chart', 'PolicyAndOtherController@organizationalChart')->name('organizational.chart');
Route::get('/permit', 'PolicyAndOtherController@permit')->name('permit');
Route::get('/portfolio/{id}', 'PortfolioController@show' )->name('portfolio');
Route::post('/contact', 'ContactFormSubmitController@store')->name('contact.submit');
Route::post('/newsletter', 'NewsletterController@store')->name('subscribe.newsletter');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
