<%-- 
    Document   : inserciones
    Created on : 20 sept 2023, 14:44:57
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
        .form-controlddl {
            margin-bottom: 20px;
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
            <h1>Insertar</h1>
            <br />
            <h2>Iniciar Sesión</h2>
            <br />
            <form action="index.jsp" method="post">
                <select id="opciones" name="opciones" class="form-controlddl" onchange="mostrarCampos()">
                    <option value="crear_cliente">Crear Cliente</option>
                    <option value="crear_sucursal">Crear Sucursal</option>
                    <option value="crear_suscripcion">Crear Suscripción</option>
                </select>
                 <div id="crearClienteCampos" style="display: block;">
                    <!-- Campos de entrada para Crear Cliente -->
                    <input type="text" name="clienteNombre" placeholder="Nombre del cliente">
                    <input type="text" name="clienteApellido" placeholder="Apellido del cliente">
                </div>

                <div id="crearSucursalCampos" style="display: none;">
                    <!-- Campos de entrada para Crear Sucursal -->
                    <input type="text" name="sucursalNombre" placeholder="Nombre de la sucursal">
                    <input type="text" name="sucursalDireccion" placeholder="Dirección de la sucursal">
                </div>

                <div id="crearSuscripcionCampos" style="display: none;">
                    <!-- Campos de entrada para Crear Suscripción -->
                    <input type="text" name="suscripcionNombre" placeholder="Nombre de la suscripción">
                    <input type="text" name="suscripcionDuracion" placeholder="Duración de la suscripción">
                </div>

                <script>
                    function mostrarCampos() {
                        var seleccion = document.getElementById("opciones").value;

                        // Ocultar todos los divs de campos
                        // Mostrar el div de campos correspondiente a la opción seleccionada
                        if (seleccion === "crearCliente") {
                          document.getElementById("crearClienteCampos").style.display = "block";
                          document.getElementById("crearSucursalCampos").style.display = "none";
                        document.getElementById("crearSuscripcionCampos").style.display = "none";
                        } else if (seleccion === "crearSucursal") {
                          document.getElementById("crearClienteCampos").style.display = "none";
                          document.getElementById("crearSucursalCampos").style.display = "block";
                          document.getElementById("crearSuscripcionCampos").style.display = "none";
                          
                        } else if (seleccion === "crearSuscripcion") {
                          document.getElementById("crearSuscripcionCampos").style.display = "block";
                          document.getElementById("crearClienteCampos").style.display = "none";
                          document.getElementById("crearSucursalCampos").style.display = "none";
                        }
                      }

                    
                </script> 
                

                <input type="submit" class="gradient-button" value="Enviar">
            </form>
        </div>
        
    </div>
</body>
</html>
