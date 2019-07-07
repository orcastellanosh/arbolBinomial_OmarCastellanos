Buenos dias

- La solucion a la prueba fue desarrollado en PHP 7.x utilizando un motor de base de datos MySQL 
- Utilice Programacion Orientada a objetos (POO) y Modelo vista controlador (MVC)
- se diseño el arbol binomial que se encuentra en la imagen "arbol binomial" en la base de datos

Pasos para la instalacion:

- descargar y pegar la carpeta "binomialOmarCastellanos", para ello se puede utilizar el programa XAMPP
 que virtualiza un servidor, incluye ya el PHP y el motor de base de datos MYSQL, instalando el programa en un computador
 con windows, esta seria la ruta aproximada: "C:\xampp\htdocs\binomialOmarCastellanos"

- importar el archivo "binomial_db.sql" en una base de datos MySQL, si cuenta con XAMPP puede importar el archivo
 sobre phpmyadmin que por defecto se encuentra en la ruta 'http://localhost/phpmyadmin/'
  
        NOTA: si el archivo presenta problemas con parametros adicionales ejecutar "binomial_db_basico.sql" que elimina valores de configuracion
        que no resultan ser muy relevantes para la presente prueba 

- configurar los parametros del servidor mysql en el archivo "binomialOmarCastellanos/Model/BinomialModel.class.php" en la linea 17
	$this->conexion = new mysqli('NOMBRE DEL HOST','USUARIO DEL MOTOR MYSQL','CONTRASEÑA',"binomial_db");

- iniciar el servicio rest en un entorno de prueba como postman como se puede ver en la imagen "Prueba postman" en el archivo
	
	URL ejemplo de prueba "http://localhost/binomialOmarCastellanos/View/index.php?valor1=52&valor2=90

Estare atento a cualquier duda o comentario

Gracias 

Cordialmente Omar Ricardo Castellanos
correo omarricardocastellanos@gmail.com

