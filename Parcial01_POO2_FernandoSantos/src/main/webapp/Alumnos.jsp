<%-- 
    Document   : LugaAcce
    Created on : 08-24-2016, 05:40:46 PM
    Author     : ferna
--%>


<%@page import="com.sv.udb.controlador.AlumnosCtrl"%>
<%@ taglib uri="http://displaytag.sf.net/el" prefix="display" %>
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
                        <li><a href="Consulta.jsp" accesskey="1" title="">Consulta</a></li>
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
                    <h2>Agregar Alumnos</h2>
                </div>
                <div class="content">
                    <h1>${mensAler}</h1>
                    <form method="post" name="frmAlum" id="frmPers" action="AlumnoServ">
                        <div class="row">
                            <input type="hidden" name="Codi" value="${Codi}"/>
                            <div class="text" >
                                <label>Nombre:</label>
                                <input type="text" class="text" id="NombLugaAcce" name="Nomb" placeholder="Nombre" value="${Nomb}"/>
                            </div>
                            <div class="text" >
                                <label>Apellido:</label>
                                <input type="text" class="text" id="Apel" name="Apel" placeholder="Apellidos" value="${Apel}"/>
                            </div>
                            <div class="text" >
                                <label>Fecha Nacimiento</label>
                                <input type="Date" class="text" id="NombLugaAcce" name="Fech" value="${Fech}"/>
                            </div>
                            <div class="text" >
                                <label>Correo</label>
                                <input type="text" class="text" id="Mail" name="Mail" placeholder="Correo" value="${Mail}"/>
                            </div>
                            <div class="text" >
                                <label>Telefono</label>
                                <input type="text" class="text" id="Tele" name="Tele" placeholder="Telefono" value="${Tele}"/>
                            </div>
                            <div class="text" >
                                <label>Direccion</label>
                                <input type="text" class="text" id="Dire" name="Dire" placeholder="Direccion" value="${Dire}"/>
                            </div>
                            <div class="text" >
                                <label>Genero</label>
                                <input type="text" class="text" id="Gene" name="Gene" placeholder="Genero" maxlength="1" value="${Gene}"/>
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
                            
        


        <div id="copyright">
            <p>&copy; Untitled. All rights reserved. | Photos by <a href="http://fotogrph.com/">Fotogrph</a> | Design by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.</p>
        </div>
    </body>
</html>
