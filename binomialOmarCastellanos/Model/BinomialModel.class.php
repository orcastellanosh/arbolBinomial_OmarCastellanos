<?php

/*
* Codigo realizado por Omar Ricardo Castellanos Hernandez
* arbol binomial el cual busca el padre en comun mas cercano entre 2 nodos
* correo: omarricardocastellanos@gmail.com
*
*/

//clase para la conexion con la base de datos
class BinomialModel{
	protected $conexion;
    protected $db;

    public function conectar()
    {
        $this->conexion = new mysqli("localhost", "root", "", "binomial_db");
        if ($this->conexion->connect_errno) {
        	die("Error conexion: " . $this->conexion->connect_error);
        }
        return true;

    }

    // consulta de datos en la tabla nodos de la base de datos
    public function selectData()
    {
    	$this->conectar();
    	if ($resultado = $this->conexion->query("SELECT * FROM NODOS")) {
		    $contador = 0;
		    while($row = $resultado->fetch_assoc()) {
			 $nodos[$contador]['padre'] = $row['padre'];
			 $nodos[$contador]['hijo'] = $row['hijo'];
			 $contador++;
			}
		    return json_encode($nodos);
		    $resultado->close();
		}


    }

}



?>