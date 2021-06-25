<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

use App\Models\File as Appfile;

class FileController extends Controller
{
     /**

     * Show the application dashboard.

     *

     * @return IlluminateHttpResponse

     */

    

    public function create()

    {

        return view('create');

    }

    /**

     * Show the application dashboard.

     *

     * @return IlluminateHttpResponse

     */

    public function store(Request $request)

    {

        $this->validate($request, [

                'filenames' => 'required',

                'filenames.*' => 'required'

        ]);

        $token = $request->session()->token();
        $token = csrf_token();

        $cntfile = DB::table('files')->max('fileID');
         $files = [];
         $topicID = $cntfile+1; // for test
         if($request->hasfile('filenames'))
 
          {
                 
             foreach($request->file('filenames') as $file)
 
             {
                
                 
              
                 $originame_name = $file->getClientOriginalName();
                 $name = $topicID.'-'.$originame_name;
 
                 $file->move(public_path().'/files/', $name);  
 
                 $files[] = $name;  
 
 
 
             }
 
          }

         $file= new appfile();

         $file->fileID = $cntfile +1;
         $file->fromPerson = $request->input('fromPerson'); 
         $file->toPerson = $request->input('toPerson'); 
         $file->topic = $request->input('topic'); 
         $file->msg = $request->get('msg'); 
         //$file->filePath = $topicID."/";
         $file->filenames = $files;
   

         $file->save();

       

        return back()
        ->with('success', 'Data Your files has been successfully added')
        ->with('files', $files);

    }

    public function index()
    {   
        /*DB::enableQueryLog(); 
        $filesME = DB::table('files')
        ->select('*')
        ->where('toPerson',Session::get('uID'))
        ->get();*/
      //  dd(DB::getQueryLog());
        return view('pages.efile.index', ['filesME' => null]);
       // return view('pages.efile.index');
    }

}