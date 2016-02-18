<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Dashboard</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css">
 <link href="${pageContext.request.contextPath}/resources/css/app1.css" rel="stylesheet" >

 <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
<script type="text/javascript" src="http://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script type="text/javascript" src="/auto/resources/js/script1.js"></script>

 
 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-more.js"></script>
<script src="https://code.highcharts.com/modules/solid-gauge.js"></script>
 
 <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/pie.js"></script>
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>

 <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/font-awesome.min.css"/>" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">

</head>
<body>
 <!-- Fixed navbar -->
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">AUT<i class="fa fa-circle"></i>LYTICS</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="index.html">HOME</a></li>
            <li><a href="about.jsp">ABOUT</a></li>
			<li><a href="search.jsp">SEARCH</a></li>
            
			<li><a data-toggle="modal" data-target="#myModal" href="#myModal"><i class="fa fa-envelope-o"></i></a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

	<div id="headerwrap">
		<div class="container">
			<div class="row centered">
				<div class="col-lg-8 col-lg-offset-2">
				
				</div>
			</div><!-- row -->
		</div><!-- container -->
	</div><!-- headerwrap -->


<div>
<table style="width:550; height:180 ">
	
<td>
	<div class="col-sm-4">
<img src="" id="jsonImage" style="width: 400px; height: 230px;" />
	</div>
</td>

<td>
	
	<div style="width:550px;height:200px;padding:1px;border:1px hidden; float:right">
	<div class="col-sm-4">
	<strong>
		
<p id="jsonText" style="float:left;"></p>
	 <p id="jsonCde" style="padding-left : 0px;float:left;"></p>
	</strong>
	</div>
	
	<div class="row">
	<br>
	<p id="jsonDesc" style="text-align:justify "> </p>
	</br>
	</div>
	
	<div class="container">
	<div class="row">
        <div class="col-md-6">
    		
            <div id="custom-search-input">
                <div class="input-group col-md-12">
                    <input type="text" class="form-control input-lg" placeholder="ex.Mumbai" />
                    <span class="input-group-btn">
                        <button class="btn btn-info btn-lg" type="button">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
                </div>
            </div>
        </div>
	</div>
</div>
	</td>
	
</div>
</table>

</div>



	<div id="lg">
		<div class="container">
			<div class="row centered">
				<div>
<div class="column">
 
  <div class="portlet">
    <div class="portlet-header">Sentiment</div>
    <div class="portlet-content">
	<div id="chartContainer" style="width: 300px; height: 200px;"></div>
		</div>
  </div>
 
  <div class="portlet" id="onClickOpenDialog">
    <div class="portlet-header">Source</div>
    <div class="portlet-content">
		 <div id="chartContainer1" style="width: 300px; height: 200px;" id="onClickOpenDialog"></div>
		</div>
  </div>
 </div>

 
<div class="column">
 
  <div class="portlet"  >
    <div class="portlet-header">Issues</div>
    <div class="portlet-content">
	<div id="chartContainer3" style="width: 300px; height: 200px;"></div>
		</div>
  </div>
  
  <div class="portlet">
    <div class="portlet-header">Adjectives</div>
    <div class="portlet-content">
	<div id="container" style="width: 300px; height: 200px;"></div>
		</div>
  </div>
</div>  
  
 <div class="column">
  <div class="portlet" >
    <div class="portlet-header">Type</div>
    <div class="portlet-content">
	<div id="chartdiv" style="width: 400px; height: 200px;"></div>
		</div>
  </div>
 <div class="portlet">
    <div class="portlet-header">others</div>
    <div class="portlet-content">
	<div id="piechart" style="width: 300px; height: 200px;"></div>
	
		</div>
  </div>
</div>

<div id="dialog" title="popup">
  
<div id="content"></div>
	
</div>
			</div><!-- row -->
		</div><!-- container -->
	</div><!-- dg -->
	
	
	<div id="r">
		<div class="container">
			<div class="row centered">
				<div class="col-lg-8 col-lg-offset-2">
					<h4>WE ARE STORYTELLERS. BRANDS ARE OUR SUBJECTS. DESIGN IS OUR VOICE.</h4>
					<p>We believe ideas come from everyone, everywhere. At BlackTie, everyone within our agency walls is a designer in their own right. And there are a few principles we believeâand we believe everyone should believeâabout our design craft. These truths drive us, motivate us, and ultimately help us redefine the power of design.</p>
				</div>
			</div><!-- row -->
		</div><!-- container -->
	</div><! -- r wrap -->
	
	
	<!-- FOOTER -->
	<div id="f">
		<div class="container">
			<div class="row centered">
			  <a href="#" class="icoRss" title="Rss"><i class="fa fa-rss"></i></a>
			  <a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a>
			  <a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a>
		      <a href="#" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a>
	          <a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a>
              <a href="#"><i class="fa fa-dribbble" title="Dribbble"></i></a>     
			</div><!-- row -->
		</div><!-- container -->
	</div><!-- Footer -->


	<!-- MODAL FOR CONTACT -->
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	        <h4 class="modal-title" id="myModalLabel">contact us</h4>
	      </div>
	      <div class="modal-body">
		        <div class="row centered">
		        	<p>We are available 24/7, so don't hesitate to contact us.</p>
		        	<p>
		        		Somestreet Ave, 987<br/>
						London, UK.<br/>
						+44 8948-4343<br/>
						hi@blacktie.co
		        	</p>
		        	<div id="mapwrap">
		<iframe height="300" width="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.es/maps?t=m&amp;ie=UTF8&amp;ll=52.752693,22.791016&amp;spn=67.34552,156.972656&amp;z=2&amp;output=embed"></iframe>
					</div>	
		        </div>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-dismiss="modal">Save & Go</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->





	

	



</body>
</html>
