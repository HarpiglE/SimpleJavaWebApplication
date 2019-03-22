<%@page import="net.harpigle.*" %>

<DOCTYPE! html>
<html>
	<head>
		<title>
			Preparing for Journey
		</title>
		<link rel="icon" type="image/png" href="img/favicon.png" />
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-grey.css">
		<link href="https://fonts.googleapis.com/css?family=Titillium+Web" rel="stylesheet">
		<style type="text/css">
			* {
				font-family: 'Titillium Web', sans-serif
			}
			hr {
				margin: 0;
				padding: 0;
				border-top: 2px solid #eee;
			}
		</style>
	</head>

	<body>
		<%

			int journeyNumber = Integer.valueOf(request.getParameter("journey"));
			JourneyRepo journeyRepo = JourneyRepo.getInstance();
			String[] equipments = journeyRepo.getJourney(Integer.valueOf(journeyNumber));
			
		%>

		<header class="w3-container w3-theme w3-card">
			<p class="w3-xlarge w3-center">
				Welcome to Java Web Application
			</p>
		</header>
		<section class="w3-container">
			<h2 class="w3-large w3-center">
				<b>You picked up below things for journey #<%= journeyNumber %></b>
			</h2>
			<a class="w3-margin-bottom" href="index.jsp" style="float: right;">
				Back to Main Page
			</a>
			<article class="w3-row-padding">
				<%

					for (String equipment : equipments) {

				%>
				<div class="w3-col s4 w3-margin-bottom">
					<div class="w3-card">
						<img class="w3-image" src="img/<%= equipment %>.jpg" title="<%= equipment %>" alt="<%= equipment %>" style="width: 100%"/>
						<hr/>
						<div class="w3-container w3-center">
							<p>
								<b>
									<%= equipment %>
								</b>
							</p>
						</div>
					</div>
				</div>
				<%

					}

				%>
			</article>
		</section>
		<footer class="w3-container w3-theme w3-center">
			<p>
				Made with love by HarpiglE
			</p>
		</footer>
	</body>
</html>