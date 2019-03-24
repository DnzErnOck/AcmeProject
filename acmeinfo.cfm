	<!DOCTYPE html>
<html class='no-js' >
	
	<head>
		
		
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	
		<title>Information</title>
		
		<!--[if lt IE 9]>
		  <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

		
		<link rel='stylesheet' type='text/css' href='bootstrap/css/bootstrap.min.css' >
		<link rel='stylesheet' type='text/css' href='css/ionicons.min.css' >
		<link rel='stylesheet' type='text/css' href='css/owl.carousel.css' >
		<link rel='stylesheet' type='text/css' href='css/owl.theme.css' >
		<link rel='stylesheet' type='text/css' href='css/owl.transitions.css' >
		<link rel='stylesheet' type='text/css' href='css/style.css' >
		<link rel='stylesheet' type='text/css' href='css/color-default.css' >
		
		
	</head>
	
	<body>
		
		
		<!--close button-->
		<a href='acme.cfm' class='close-btn' >
			<span></span>
			<span></span>
		</a>
		<!--/close button-->
		
		
		<!--preloader-->
		<div id='preloader' >
		
			<div class='loader' >
				<img src='img/load.gif' alt='symp' >
			</div>
			
		</div>
		<!--/preloader-->
		
		<cfparam name="url.id" default="">
        <cfset imageid= url.id/>

        <cfquery name="qinformation" datasource="imagedata">
            select * from imagetable where id=#imageid#
        </cfquery>

        <cfoutput query="qinformation">

		<div id='wrapper' >
			
			<section class='single-work' >
				
				<div class='container' >
					
					
					<div class='row' >
						
						<div class='col-md-8' >
							
							<img src='#qinformation.imageurl#' alt='symp' >
						
						</div>
						
					</div>
					
					
					<div class='work-content' >
						
						<div class='block' >
							
							<h4>Resim Adi</h4>
							
							<p>
								#qinformation.imagename#
							</p>
							
						</div>
						
						<div class='block row' >
							
							
							<div class='col-md-6' >
								
								<h4>Resim Hakkinda</h4>
								
								<p>
									#qinformation.info#
								</p>
								
							</div>
							
						</div>
						
					</div>
					
					
				</div>
				
			</section>
			
		</div>
        </cfoutput>
		<script src='js/jquery.min.js' ></script>
		<script src='js/jquery.stellar.min.js' ></script>
		<script src='js/modernizr.js' ></script>
		<script src='js/owl.carousel.min.js' ></script>
		<script src='js/jquery.shuffle.min.js' ></script>
		<script src='js/jquery.magnific-popup.min.js' ></script>
		<script src='js/validator.min.js' ></script>
		<script src='js/smoothscroll.js' ></script>
		<script src='js/script.js' ></script>
		
	</body>
	
</html>