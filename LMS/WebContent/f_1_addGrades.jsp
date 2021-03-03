<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%
    response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires","0");
	if(session == null || session.getAttribute("un") == null || session.getAttribute("pw") == null){
		response.sendRedirect("error.html");	
	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Courses</title>
<link rel='stylesheet' href='styles.css'>
</head>
<body>
<div class="topnav">
  <a href="f_profile.jsp">PROFILE</a>
  <a href="f_1_addGrades.jsp">GRADES</a>
  <a href="LogoutJDBC" style="float:right">Log Out</a>
</div><br>
   
        <h2>Add Grades</h2>
        	<form method="post"  action='f_1_addGrades_dba.jsp'>
<hr>
			<label for='uid'>Username</label>
			<input type='text' name='uname' id='uid'><br>
			
			<label for='cid'>Course Name</label>
			<input type='text' name='cname' id='cid'><br>
			
			 <label for="year"> Select Year</label>
			 <select name="year" id="year">
              <option>Select Year</option>
              <option value="1st">1st</option>
              <option value="2nd">2nd</option>
              <option value="3rd">3rd</option>
              <option value="4th">4th</option>
              </select><br>
              
               <label for="sem"> Select sem</label>
              <select name="sem" id="sem">
               <option>Select Sem</option>
                <option value="even">Even</option>
                <option value="odd">odd</option>
             </select><br>
			
			<label for='sec'>Section</label>
			<input type='text' name='sec' id='sec'><br>
			
			<label for='test1'>Test1</label>
			<input type='text' name='test1' id='test1'><br>
			
			<label for='test2'>Test2</label>
			<input type='text' name='test2' id='test2'><br>
			
			<label for='inter'>Internals</label>
			<input type='text' name='internals' id='inter'><br>
			
			<label for='semend'>Sem End</label>
			<input type='text' name='semend' id='semend'><br>
 			
             <input type="submit" value="Submit">

                </form>
    </div>
</body>
</html>