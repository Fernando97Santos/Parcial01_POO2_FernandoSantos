<%-- 
    Document   : GrupoAlumno
    Created on : 08-31-2016, 05:43:19 PM
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
                    <form method="post" name="frmAlum" id="frmPers" action="GrupAlumServ">
                        <div class="row">
                            <input type="hidden" name="Codi" value="${Codi}"/>
                            <div class="text" >
                                <label>Alumno:</label>
                                <select name="cmbAlum">
                                    <jsp:useBean id="beanAlumnosCtrl" class="com.sv.udb.controlador.AlumnosCtrl" scope="page"/>
                                    <c:forEach items="${beanAlumnosCtrl.consTodo()}" var="fila">
                                        <c:choose>
                                            <c:when test="${fila.codiAlum eq cmbAlum}">
                                                <option selected="" value="${fila.codiAlum}">${fila.nombAlum}</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="${fila.codiAlum}">${fila.nombAlum}</option>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="text" >
                                <label>Grupo:</label>
                                <select name="cmbGrup">
                                    <jsp:useBean id="beanGruposCtrl" class="com.sv.udb.controlador.GruposCtrl" scope="page"/>
                                    <c:forEach items="${beanGruposCtrl.consTodo()}" var="fila">
                                        <c:choose>
                                            <c:when test="${fila.codiGrup eq cmbGrup}">
                                                <option selected="" value="${fila.codiAlum}">${fila.nombGrup}</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="${fila.codiGrup}">${fila.nombGrup}</option>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                </select>
                            </div>
                            
                            
                            <div class="column1">
                            <input type="submit" class="button-small" id="boton" name="cursBton" value="Guardar"/>
                            </div>
                            <div class="column4">
                            <input type="submit" class="button-small" id="boton" name="cursBton" value="Modificar"/>
                            </div>
                            <div class="column2">
                            <input type="submit" class="button-small" id="boton" name="cursBton" value="Eliminar" onclick="return confirm('¿Estas seguro que deseas eliminar este registro?');"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
                            
        <br/>
        <br/>
        <br/>
        <br/>
        <div class="title">
            <h2>Consulta de Grupo-Alumno</h2>
        </div>
        <form method="POST" name="Frm" action="GrupAlumServ">
            <div class="form-group">
                <label>Grupo</label>
                <select name="grup" class="form-control">
                    <jsp:useBean id="grupo1" class="com.sv.udb.controlador.GruposCtrl" scope="page"/>
                    <c:forEach items="${grupo1.consTodo()}" var="fila">
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
            <input type="submit" name="cursBton" value="Consultar" class="button-small"/>
        </form>
        <form method="POST" name="Frm" action="GrupAlumServ">
                    <% Object Codi = request.getAttribute("Grupo");
                    
                    %>
                    <% request.setAttribute( "demoAttr", new AlumGrupCtrl().ConsTodo(Codi)); %>
                <display:table id="Persona" name="demoAttr" class="table table-hover">
                    <display:column property="codiAlum.nombAlum" title="Alumno" sortable="true"/>
                    <display:column property="codiAlum.apelAlum" title="Apellido" sortable="true"/>
                    <display:column property="codiGrup.nombGrup" title="Grupo" sortable="true"/>
                </display:table>
                </form>


        <div id="copyright">
            <p>&copy; Untitled. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
        </div>
    </body>
</html>
