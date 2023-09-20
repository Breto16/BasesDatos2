<%-- 
    Document   : eliminaciones
    Created on : 20 sept 2023, 14:47:59
    Author     : Isaac Brenes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Inicio de Sesión</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@40,400,1,0" />
    <style>
        html, body {
        margin: 0;
        padding: 0;
        border: 0;
        background-color: #1E2126;
        font-family: "Segoe UI", Arial, sans-serif; /* Aplicamos la fuente Segoe UI */
        }
        
        .custom-buttonR {
            margin-left: auto;
            margin-right: 10px;
            align-self: center;
        }
        .material-symbols-outlined {
            font-size: 40px;
            color: #FFFFFF; /* Cambia el color aquí al color deseado (#FF0000 es rojo) */
            }
        #HeaderBar {
            background-color: #1E2126;
            height: 60px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            color: white;
            padding-left: 20px;
            font-family: "Segoe UI", Arial, sans-serif; /* Aplicamos la fuente Segoe UI */
            
        }
        #HeaderBar h1 {
            font-size: 20px;
            margin: 0;
            padding: 0;
            
        }
        .container {
            display: flex;
            height: 624px;
            margin-left: 0px;
        }

        .left {
            flex: 4%;
            background-color: #FF4500;
            display: flex;
            flex-direction: column;
            justify-content: center; /* Centra verticalmente los botones */
            align-items: center;
        }

        .right {
            flex: 96%;
            background-color: #16191C;
            color: white;
            padding: 20px;
            text-align: center;
            font-family: "Segoe UI", Arial, sans-serif; /* Aplicamos la fuente Segoe UI */
        }
        input[type="text"],input[type="password"] {
            background-color: #1E2126; /* Tonalidad gris */
            height: 48px;
            width: 80%;
            color: white; /* Color de fuente blanco */
            border: none; /* Sin borde */
            padding: 8px; /* Ajusta el espaciado según tus necesidades */
            border-radius: 5px; /* Borde redondeado de 5 píxeles */
            box-sizing: border-box;
            border: 3px solid transparent;
            font-size: 25px;
        }

        .form-control {
            margin-bottom: 20px;
        }
        .gradient-button {
        background-image: linear-gradient(to right, #FF4500 ,#FFA500); /* Cambié los colores a naranja */
        color: white; /* Cambia el color del texto si es necesario */
        text-align: center;
        border: none;
        padding: 10px 20px; /* Ajusta el espaciado según tus necesidades */
        cursor: pointer;
        transition: background-color 0.3s ease; /* Efecto de transición suave */
        height: 50px;
        width: 50%;
        border-radius: 5px;
        font-size: 20px;
        }

        .gradient-button:hover {
            /* Cambia el color de fondo al pasar el cursor sobre los botones si es necesario */
            background-image: none;
            background-color: #FF4500; /* Cambia el color de fondo en el hover */
        }
        .button-container {
            display: flex;
            justify-content: center; /* Centra horizontalmente los botones */
            align-items: center;
            margin-top: 20px; /* Ajusta el espacio vertical entre los botones */
        }

        
        #PanelSuperior {
            display: flex;
            align-items: center; /* Centra verticalmente el contenido */
            background-color: #1E2126;
            height: 50px;
            justify-content: flex-start; /* Alinea los elementos a la izquierda */
        }
    </style>
</head>
<body>
    <div id="HeaderBar">
        <h1>Cadenas Gyms</h1>
        <a href="index.jsp" class="custom-buttonR"><span class="material-symbols-outlined">logout</span></a>
    </div>
    
    <div class="container">
        <div class="left">
            <a href="main.jsp" class="custom-button"><span class="material-symbols-outlined">home</span></a>
            <br />
            <a href="consultas.jsp" class="custom-button"><span class="material-symbols-outlined">search</span></a>
            <br />
            <a href="inserciones.jsp" class="custom-button"><span class="material-symbols-outlined">add</span></a>
            <br />
            <a href="modificaciones.jsp" class="custom-button"><span class="material-symbols-outlined">edit</span></a>
            <br />
            <a href="eliminaciones.jsp" class="custom-button"><span class="material-symbols-outlined">delete</span></a>
        </div>
        <div class="right">
            <br />
            <h1>Eliminar</h1>
            <br />
            <h2>Iniciar Sesión</h2>
            <br />
            <form action="main.jsp" method="post"> <!-- Reemplaza "TuServlet" con el nombre de tu servlet JSP -->
                <div class="form-control">
                    <input type="text" name="txt_email" class="form-control" placeholder="Email" />
                </div>
                <div class="form-control">
                    <input type="password" name="txt_pass" class="form-control" placeholder="Contraseña" />
                </div>
                <div>
                    <span class="error">
                        <!-- Muestra mensajes de error aquí si es necesario -->
                    </span>
                </div>
                <br />
                <div class="button-container">
                    <input type="submit" name="btn_Login" class="gradient-button" value="Iniciar Sesión" />
                    
                </div>
            </form>
        </div>
        
    </div>
</body>
</html>
