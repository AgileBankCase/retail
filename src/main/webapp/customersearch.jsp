<!DOCTYPE html>
<html>
<head>
<style>
</style>
</head>
<body bgcolor=#E6E6FA>
	<jsp:include page="header.jsp" />
	<div class="mainpage">
		<div id="searchcustomer">
			<form id="search">
				<table border='0' width='480px' cellpadding='0' cellspacing='0'
					align='center'>
					<tr>

						<td align='center'>Customer SSN Id</td>
						<td><input name='ssn-id' pattern="[0-9]{9}"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td align='center'><p>OR</p></td>
					</tr>

					<tr>
						<td align='center'>Customer Id</td>
						<td><input name='cid' pattern="[0-9]{9}"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<table border='0' cellpadding='0' cellspacing='0' width='480px' align='center'>
						<tr>
							<td align='center'><button
									onclick="javascript:getCustomer(event);">Submit</button></td>
						</tr>
					</table>
				</table>
			</form>
		</div>
		<div id="updatecustomer" class="hide">
			<jsp:include page="updatecustomerscreen.jsp" />
		</div>
	</div>
	<script>
		function getJsonFromUrl(url) {
			if (!url)
				url = location.search;
			var query = url.substr(1);
			var result = {};
			query.split("&").forEach(function(part) {
				var item = part.split("=");
				result[item[0]] = decodeURIComponent(item[1]);
			});
			return result;
		}
		function getCustomer(event) {
			event.preventDefault();
			var url = window.location.href;
			var result = getJsonFromUrl(url);
			var action = result["action"];
			$.ajax({
				method : "get",
				url : "/customersearch",
				data : $('#search').serialize() + "&action=" + action,
				success : function(data) {
					var json = JSON.parse(data);
					var userDetails = json["User_Details"];
					userDetails.forEach(user => {
						$("#cusssnID").html(user["Customer SSN ID"]);
						$("#cusID").html(user["Customer ID"]);
						$("#cusname").html(user["Name"]);
						$("#age").html(user["Age"]);
						$("#address1").html(user["Address Line 1"]);
						$("#address2").html(user["Address Line 2"]);
						$("#updatecustomer").attr("class","");
						$("#searchcustomer").attr("class","hide");	
					});
				}
			});
		}
	</script>
	<jsp:include page="footer.jsp" />
</body>

</html>