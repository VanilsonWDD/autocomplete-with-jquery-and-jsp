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
        <style type="text/css">
            *{
                font-family: Arial;
                font-size: 13px;
            }
            body{
                background-color: #F0F0F0;               
            }
            #nomepais{
                width: 300px;
                height: 30px;
            }
            #conteudo{
            }
            #conteudo h1{
                font-size: 33px;
                text-shadow: 1px 1px 0 #FFFFFF;
            }
        </style>
    </head>
    <body>
        <div id ="conteudo">
            <h1>Auto complete com Jquery e Jsp</h1>
            <input type ="text" name ="txtnomepais" id ="nomepais"/>
        </div>
        
        <script>
            $().ready(function() {
                $("#nomepais").autocomplete("getdados.jsp", {
                width: 303,
                scrollHeight: 220
                });
            })
        </script>
    </body>
</html>
