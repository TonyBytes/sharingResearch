<?php

namespace App\Http\Controllers;
use Input;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use App\linkpreview;
use App\comments;
class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

  	public function index(){
  		return view("index.php");
  	}
  	public function save(){
  		$data = json_decode(urldecode(base64_decode(Input::get('data'))));
  		$dataToSave = $data->data;
		$dataToSave->text = $data->text;

		$dataToSave->url = urldecode(base64_decode($dataToSave->url));
		$dataToSave->pageUrl = urldecode(base64_decode($dataToSave->pageUrl));
		$dataToSave->canonicalUrl = urldecode(base64_decode($dataToSave->canonicalUrl));

		$save=$dataToSave;
		//$save->text = mysqli_real_escape_string($save->text);
		//$save->title = mysqli_real_escape_string($save->title);
		//$save->description = mysqli_real_escape_string($save->description);	
  		
		$new = new linkpreview();
		$new->text = $save->text;
		$new->image = $save->image;
		$new->title = $save->title;
		$new->canonicalUrl = $save->canonicalUrl;
		$new->url= $save->url;
		$new->pageUrl = $save->pageUrl;
		$new->description = $save->description;
		$new->videoIframe =$save->videoIframe;
		$new->save();
  	}

  	public function retrieve(){
  		return linkpreview::all();
  	}

  	public function updateVotes(){
  		$data = json_decode(urldecode(base64_decode(Input::get('data'))));
  		$data = $data->data;  //$data is a jason object with data as keyword

  		$post = linkpreview::findOrFail($data->id);
  		$post->votes = $data->votes;
  		$post->save();

  	}

  	public function getComments(){
		$data = json_decode(urldecode(base64_decode(Input::get('data'))));
  		$data = $data->data;  //$data is a jason object with data as keyword

  		$post = linkpreview::findOrFail($data->id);
  		//$comments=array();

  		$comments = comments::where('linkId','=',$post->id)->get();


  		//return collect($post->getComments()) ;
  		//foreach($post->getComments()  as $comment)
  		//	$comments[]=$comment;

  		return $comments;
  	}

  	public function newComment(){
  		$data = json_decode(urldecode(base64_decode(Input::get('data'))));
  		$content = $data->content; 
  		$poster = $data->poster;
  		$linkId = $data->linkId;

  		$comment = new comments();
  		$comment->content = $content;
  		$comment->poster = $poster;
  		$comment->linkId = $linkId;
  		$comment->save();
  		//increment error

  		return linkpreview::findOrFail($comment->linkId);
  	}
}
