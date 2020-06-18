<!DOCTYPE html>
<html>
<head>
<style>
</style>
</head>
<body bgcolor=#E6E6FA>
	<jsp:include page="header.jsp" />
	
	<div>
		<div id="searchcustomer">
			<form id="search">
				<table border='0' width='480px' cellpadding='0' cellspacing='0'
					align='center'>
					<tr>
						<td colspan="2" align="center"><h1><span id="title"></span> Customer Screen</h1></td>
					</tr>
					<tr>
						<td align='center'>Customer SSN Id</td>
						<td><input id="ssn-id" name='ssn-id' pattern="[0-9]{9}"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td align='center'><p>OR</p></td>
					</tr>

					<tr>
						<td align='center'>Customer Id</td>
						<td><input id="cus-id" name='cid' pattern="[0-9]{9}"></td>
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
		<div id="deletecustomer" class="hide">
		<jsp:include page="deletecustomer.jsp"/>
		</div>
	</div>
	<script>
		var action = ""; 
		
		function getJsonFromUrl(url) {
			if (!url)
				url = location.search;
			var query = url.split("?")[1];
			var result = {};
			query.split("&").forEach(function(part) {
				var item = part.split("=");
				result[item[0]] = decodeURIComponent(item[1]);
			});
			return result;
		} 
		
		$(document).ready(function() {
			var url = window.location.href;
			var result = getJsonFromUrl(url);
			action = result["action"];
			if(action=="update"){
				$("#title").html("Update");
			}else if(action=="delete"){
				$("#title").html("Delete");
			}
		});
		
		function getCustomer(event) {
			event.preventDefault();
			if($("#ssn-id").val()=="" && $("#cus-id").val()==""){
				alert("Both Customer ID and Customer SSN ID cannot be empty !");
				return;s
			}
			$.ajax({
				method : "get",
				url : "/customersearch",
				data : $('#search').serialize() + "&action=" + action,
				success : function(data) {
					var json = JSON.parse(data);
					var userDetails=[];
					userDetails=json["User_Details"];
					if(userDetails.length!=0){
						if(action=="update"){
							userDetails.forEach(user => {
								$("#cusssnID").html(user["Customer SSN ID"]);
								$("#cusID").html(user["Customer ID"]);
								$("#cusname").html(user["Name"]);
								$("#age").html(user["Age"]);
								$("#address1").html(user["Address Line 1"]);
								$("#address2").html(user["Address Line 2"]);
							});
							$("#updatecustomer").attr("class","");
							$("#searchcustomer").attr("class","hide");	
						}else if(action=="delete"){
							userDetails.forEach(user => {
								$("#dcusssnID").html(user["Customer SSN ID"]);
								$("#dcusID").html(user["Customer ID"]);
								$("#dcusname").html(user["Name"]);
								$("#dage").html(user["Age"]);
								$("#daddress1").html(user["Address Line 1"]);
								$("#daddress2").html(user["Address Line 2"]);
							});
							$("#deletecustomer").attr("class","");
							$("#searchcustomer").attr("class","hide");	
						}
					}else{
						alert("No customer found with given ID !");
					}
				}
			});
		}
		function cancelEvent(event){
			event.preventDefault();
			$("#deletecustomer").attr("class","hide");
			$("#updatecustomer").attr("class","hide");
			$("#searchcustomer").attr("class","");
		}
	</script>
</body>

</html>