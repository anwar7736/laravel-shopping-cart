<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use App\Mail\OTPMail;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

//Eloquent ORM
use App\Models\{User, Phone, Role, Image, Product, Post, Category, Vote, Candidate, Bus, Booking};
use App\Utils\Util;
Route::get('/votes', function(){
    
        $candidates = Candidate::withCount(['votes'])->with(['candidate', 'votes', 'votes.user', 'votes.candidate.candidate'])->get();
  
        return view('votes.candidate_votes', compact('candidates'));
         
  
  });
  
  Route::get('/tickets', function(){
    
        // $tickets = Bus::withCount(['bookings as total_tickets'])->with('bookings', 'bookings.user')->get();
        $tickets = User::withCount(['bookings as total_tickets'])->with('bookings', 'bookings.bus')->get();
  
        dd($tickets->toArray());
         
  
  });

Route::get('/vote-details/{id}', function($id){
        $details = Vote::with(['user', 'candidate.candidate'])->where('candidate_id', $id)->get();
        $details = Vote::with(['user', 'candidate.candidate'])->where('candidate_id', $id)->get();

        return view('votes.details', compact('details'));
})->name('vote.details');

Route::get('/test', function(){

      dd(Anwar::currentTime());
});

Route::view('dropzone_file_upload', 'dropzone_file_upload');

Route::post("/dropzone-upload", function(Request $request){
      $image = $request->file('file');
      $new_name = rand().'.'.$image->extension();
      $image->move(public_path('dropzone'), $new_name);


})->name('dropzone.upload');