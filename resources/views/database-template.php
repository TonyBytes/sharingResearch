<?php

// NOTE that ng-bind-html variables here are different from link-preview-*.html files.
// Here they are part of the object, while there they are part of the scope of each directive tag
// The same works for the vars showIframe,

?>

<div ng-controller="MyControllerDatabase">    
    <div class="row">

        <div class="col-sm-9 col-md-9 main">
                
        <div class="lp-outer-posted" ng-repeat="post in databasePosts | orderBy :orderProp:reverse">

            <div class="clearfix col-md-12 lp-posted lp-bottom">

            <span class="col-md-8 lp-span lp-posted-text" ng-bind-html="post.textHTML"></span>

            <div class="col-md-8 lp-posted-image lp-bottom" ng-click="imageAction(post)"
                 ng-class="{'lg-display-hide': post.image == ''}">

                <img ng-src="{{post.image}}" ng-class="{'lg-display-hide': post.showIframe == true}">

            <span><i class="fa fa-play lp-play lp-bottom"
                     ng-class="{'lg-display-hide': hidePlay(post)}"></i></span>

            <span ng-bind-html="post.videoIframeHTML"
                  ng-class="{'lg-display-hide': post.showIframe == false}"></span>

            </div>

            <a href="{{post.pageUrl}}" target="_blank">

                <div class="lp-posted-wrap col-md-8">
                    <div class="col-md-8 lp-posted-title lp-bottom">{{post.title}}</div>

                    <div class="col-md-8 lp-posted-canonical-url lp-bottom">{{post.canonicalUrl}}</div>

                    <div class="col-md-8 lp-posted-description lp-bottom" ng-bind-html="post.descriptionHTML"></div>
                </div>

            </a>
            <div class="row">
                <div class="col-sm-3 col-md-3 col-lg-3">
                    <div class="input-group"> 
                    <span class="input-group-btn">
                        <button ng-click="voteUp(post)" type="button" id="increaseButton" class="btn btn-success">+</button>
                    </span>

                    <input type="text" class="form-control" id="vote" placeholder="Vote" value="{{post.votes}}"/> 
                    <span class="input-group-btn">
                        <button ng-click="voteDown(post)" type="button" id="decreaseButton" class="btn btn-danger">-</button>
                    </span>

                    </div>
                </div>
            </div>
                <span class="col-md-8 lp-span">

                    <span class="pull-right lp-posted-close" ng-click="deletePosted(post, $index)">
                        <i class="fa fa-close"></i>
                    </span>

                </span>

            </div>
            <button ng-click="getComments(post)"> Comments</button>

            </div>
        </div>
        
        <div class="col-sm-3 col-md-3 sidebar">
            <div ng-repeat="comment in comments">
                <div>{{comment.content}}</div>
            </div>
           
            <form ng-submit="commentSubmit(newComment)">
                <textarea ng-model="newComment" > </textarea>
                <input type="submit" value="Submit" />

            </form>    
        </div> 
    </div>  
</div>
    


