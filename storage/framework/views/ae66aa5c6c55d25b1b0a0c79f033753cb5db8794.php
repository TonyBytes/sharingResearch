<html>
<head>
    <title>Link Preview - LeoCardz</title>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-2.1.4.min.js" type="text/javascript"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.js" type="text/javascript"></script>
    <!--    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js" type="text/javascript"></script>-->

    <link rel="stylesheet" type="text/css" href="demo/css/demo.css"/>
    
    <script src="app.js" type="text/javascript"></script>
    <script src="controller.js" type="text/javascript"></script>
    
    <link href="link-preview.css" rel="stylesheet">
    <script src="link-preview.js" type="text/javascript"></script>
    <script src="link-preview-database.js" type="text/javascript"></script>

</head>

<body>
<div class="page-header-fixed demo-bar">
    

</div>
<div class="row" ng-app="MyApp" ng-controller="MyController">
    

    
    <div class="col-md-12 demo-col-padding">
        <link-preview
            placeholder="Placeholder"
            limage=""
            btext="Submit"
            ltext=""
            ttext=""
            bclass="default"/>
    </div>
   

    <!-- -->
    <div class="col-sm-4 demo-col-padding">
    </div>
    <!-- From Database -->
    <div class="col-md-12 demo-col-padding">
    </div>
    <div class="col-sm-4 demo-col-padding">
    </div>
    <div class="col-md-12 demo-col-padding">
       <?php echo $__env->yieldContent('database'); ?>
    </div>

</div>
</body>
</html>
