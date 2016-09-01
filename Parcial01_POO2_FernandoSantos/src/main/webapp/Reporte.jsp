<%-- 
    Document   : Reporte
    Created on : 09-01-2016, 03:40:23 PM
    Author     : ferna
--%>

<%@page import="com.sv.udb.controlador.AlumGrupCtrl"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page import="com.sv.udb.controlador.GruposCtrl"%>
<%@page import="com.sv.udb.controlador.AlumnosCtrl"%>
<%@ taglib uri="http://displaytag.sf.net/el" prefix="display" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
        <link href="default.css" rel="stylesheet" type="text/css" media="all" />
        <link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="css/style.css"/>
        <link href="css/reset.css">
        <!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

    </head>
    <body>
        <div id="header-wrapper">
            <div id="header" class="container">
                <div id="menu">
                    <ul>
                        <li class="current_page_item"><a href="index.jsp" accesskey="1" title="">Homepage</a></li>
                        <li><a href="Alumnos.jsp" accesskey="1" title="">Alumnos</a></li>
                        <li><a href="GrupoAlumno.jsp" accesskey="1" title="">Grupos-Alumnos</a></li>
                        <li><a href="Reporte.jsp" accesskey="1" title="">Consulta de reporte</a></li>
                    </ul>
                </div>
                <div id="logo">
                    <h1><a href="#">Parcial 1 POO2</a></h1>
                    <span>Fernando Santos </span> </div>
            </div>
        </div>

        <div id="wrapper2">
            <div id="newsletter" class="container">
                <div class="title">
                    <h2>Agregar GrupoAlumno</h2>
                </div>
                <div class="content">
                    <h1>${mensAler}</h1>
                    <form method="POST" name="FrmGrupo" action="Script/Reporte.jsp">
                            <div class="form-group">
                                <label>Grupo</label>
                                <select name="grup" class="form-control">
                                    <jsp:useBean id="grupo2" class="com.sv.udb.controlador.GruposCtrl" scope="page"/>
                                    <c:forEach items="${grupo2.consTodo()}" var="fila">
                                        <c:choose>
                                            <c:when test="${fila.codiGrup eq Grupo}">
                                                <option value="${fila.codiGrup}" selected="">${fila.nombGrup}</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="${fila.codiGrup}">${fila.nombGrup}</option>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                </select>
                            </div>
                            <input type="submit" name="grupAlumBton" value="Consultar" class="btn btn-primary"/>
                        </form>
                </div>
            </div>
        </div>
         


        <div id="copyright">
            <p>&copy; Untitled. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
        </div>
    </body>
</html>
