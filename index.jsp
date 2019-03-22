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
			section {
				margin-right: 10%;
			}
		</style>
	</head>

	<body>
		<%

			JourneyRepo journeyRepo = JourneyRepo.getInstance();
			int journeyNumber = journeyRepo.getJourneyCount();

		%>

		<header class="w3-container w3-theme w3-card">
			<p class="w3-xlarge w3-center">
				Welcome to Java Web Application
			</p>
		</header>
		<aside>
			<div class="w3-sidebar w3-bar-block w3-theme-l5" style="width: 10%; right: 0">
				<h3 class="w3-bar-item">
					<%
						if (journeyNumber == 1) {
					%>
					You have no journey to show
					<%
						} else {
					%>
					Journies (<%= journeyNumber - 1 %>)
					<%
					}
					%>
				</h3>
				<% 
					if (journeyNumber > 1) {
						for (int i = 1; i < journeyNumber; i++) {
				%>
				<a class="w3-bar-item w3-button" href="review.jsp?journey=<%= i %>">
					<p>
						Journey #<%= i %>
					</p>
				</a>
				<%
						}
					}
				%>
			</div>
		</aside>
		<section class="w3-container">
			<img class="w3-image w3-margin-top w3-margin-bottom" src="img/favicon.png" alt="hiker" title="hiker">
			<p class="w3-large" style="display: inline;">
				<b>Choose your requirments for journey #<%= journeyNumber %>:</b>
			</p>

			<form method="GET" action="result.jsp">
				<input type="checkbox" name="equipments[]" value="banana" />&nbsp;Banana<br/>
				<input type="checkbox" name="equipments[]" value="boot" />&nbsp;Boot<br/>
				<input type="checkbox" name="equipments[]" value="helmet" />&nbsp;Helmet<br/>
				<input type="checkbox" name="equipments[]" value="map" />&nbsp;Map<br/>
				<input type="checkbox" name="equipments[]" value="mobile" />&nbsp;Mobile<br/>
				<input type="checkbox" name="equipments[]" value="watch" />&nbsp;Watch<br/>
				<input class="w3-button w3-white w3-border w3-margin-bottom w3-margin-top" type="submit" value="Pick" style="float: right; width: 100%" />
				<input type="hidden" name="journey" value="<%= journeyNumber %>">
			</form>
		</section>
		<footer class="w3-container w3-theme w3-center">
			<p>
				Made with love by HarpiglE
			</p>
		</footer>
	</body>
</html>