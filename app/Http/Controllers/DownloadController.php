<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Download;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Input;

class DownloadController extends Controller
{
    public function index(){
    	$allFiles = Download::all();
    	return view('filedownload.viewfile', compact('allFiles'));
    }
    public function showUploadForm(){
    	return view('filedownload.showuploadform');
    }
    public function store(Request $request){
    	
    	
    	if($request->hasFile('upload')){
    	  	$filename = $request->file('upload')->getClientOriginalName();
    		$size = $request->file('upload')->getClientSize();
    		
    		 Storage::putFileAs('public/images/',$request->file('upload'), $filename);

    	}else{
    		return 'No file selected.';
    	}
    	    $newFile = new Download;
    		$newFile->title = $request->title;
    		$newFile->name = $filename;
    		$newFile->size = $size;
    		$newFile->save();
    	return redirect()->route('viewfile');
    }
    public function download(Request $request){
    	$file_id = $request->id;
    	$file = Download::find($file_id);
    	$filePath = public_path('storage/images').'/'.$file->name;
    	return response()->download($filePath);
    }
}
