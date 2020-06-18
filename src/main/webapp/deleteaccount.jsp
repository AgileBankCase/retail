<!DOCTYPE html>
<html>
<head>
    <style>
        #navbar{
           list-style:none;
           background: #000000; 
           color:#ffffff;
           display:flex;
           justify-content: space-around;
        }

        #footer{
            list-style: none;
            padding : 50px 50px;
            display: flex;
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color:#000000;
            color: white;
            justify-content: space-around;
        }.main-section{
	width: 460px;
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}
        
    </style>
</head>
<body bgcolor= #E6E6FA>
   <jsp:include page="header.jsp"></jsp:include>
 
<table border='0' width='480px' cellpadding='0' cellspacing='0' align='center'>
<center><tr>
   <td><h1>Delete Account</h1></td>
</tr><center>
 
<table border='0' width='480px' cellpadding='0' cellspacing='0' align='center'>
<tr>
    <td align='center'>Customer Id</td>
    <td><input id="cusid" name='customer-id' pattern="[0-9]{9}"></td>
</tr>
<tr> <td>&nbsp;</td> </tr>
<tr>
    <td align='center'>Account Type</td>
    <td>
    <select id="type">
        <option>Savings</option>
        <option>Current</option>
        </select><br/><br/>
        
    </td>
    
</tr>

<tr> <td>&nbsp;</td> </tr>
<table border='0' cellpadding='0' cellspacing='0' width='480px' align='center'>
    <tr>
        <td align='center'><button onclick="javascript:deleteAccount(event)">Deletes</button></td>
    </tr>
    </table>
    </table>
     
    </table>
    </div>
    <script>
		function deleteAccount(event) {
			event.preventDefault();
			if($("#cusid").val()==""){
				alert("Please enter customer ID!");
				return;
			}
			$.ajax({
				method : "delete",
				url : "/account?cusid=" + $("#cusid").val() + "&type=" + $("#type").val(),
				success : function(data) {
					var json = JSON.parse(data);
					alert(json["status"]);
					if (json["status"] == "Succesfully Deleted!") {
						document.location.reload();
					}
				}
			});

		}
		</script>
    </body>
    
    
    </html>
