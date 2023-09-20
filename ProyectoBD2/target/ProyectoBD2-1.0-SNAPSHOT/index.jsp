<%-- 
    Document   : index
    Created on : 18 sept 2023, 11:38:58
    Author     : Isaac Brenes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Inicio de Sesión</title>
    <style>
        html, body {
        margin: 0;
        padding: 0;
        border: 0;
        background-color: #1E2126;
        font-family: "Segoe UI", Arial, sans-serif; /* Aplicamos la fuente Segoe UI */
        }
        
        #HeaderBar {
            background-color: #1E2126;
            height: 60px;
            display: flex;
            align-items: center;
            justify-content: flex-start;
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
            flex: 2;
            background: url('loginback2.jpg') no-repeat right center;
            background-size: cover;
        }

        .right {
            flex: 1;
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
    </div>
    
    <div class="container">
        <div class="left">
            <!-- Contenido adicional si es necesario -->
        </div>
        <div class="right">
            <br />
            <h1>Cadenas GYMs</h1>
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
