<%-- 
    Document   : index
    Created on : 4/Ago/2012, 18:05:29
    Author     : Vanilson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Auto complete com Jquery + Jsp</title>
        <link rel="stylesheet" type="text/css" href="css/jquery.autocomplete.css" />
        <script src="js/jquery-1.7.1.js"></script>
        <script src="js/jquery.autocomplete.js"></script>
    </head>
    <body>
        <input type ="text" name ="txtnomepais" id ="nomepais"/>
        <script>
$().ready(function() {
 
$("#nomepais").autocomplete("getdados.jsp", {
width: 440,
scrollHeight: 220,
selectFirst: true
});
})
        </script>
    </body>
</html>
