<%-- 
    Document   : getdados
    Created on : 4/Ago/2012, 18:29:13
    Author     : Vanilson
--%>

<%@page import="autocomplete.dao.PaisDao, autocomplete.modelo.Pais, java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pais</title>
    </head>
    <body>
        <%
            PaisDao pd = new PaisDao();
            List<Pais> getPais = pd.visualizarPais();
            for (Pais pais: getPais){
                out.println(pais.getNome());
            }
        %>
    </body>
</html>
