<?php
/*
* Codigo realizado por Omar Ricardo Castellanos Hernandez
* arbol binomial el cual busca el padre en comun mas cercano entre 2 nodos
* correo: omarricardocastellanos@gmail.com
*
*/

// clase encargada de procesar datos desde la base de datos y realizar la funcion de busqueda
class BinomialController{

	//funcion recursiva que buscar el padre de los 2 valores
	public function buscarPadreComun($valorBuscado1, $valorBuscado2, $datos)
	{
		if($valorBuscado1 == $valorBuscado2)
		{
			header("HTTP/1.1 200 OK");
			echo json_encode($valorBuscado1);
		}else{
			$result2 = $this->buscarNodo($valorBuscado2, $datos);
			if(!is_null($result2)){
				$this->buscarPadreComun($valorBuscado1, $result2, $datos);
			}else{
				$result1 = $this->buscarNodo($valorBuscado1, $datos);
				$this->buscarPadreComun($result1, $_GET['valor2'], $datos);
			}
		}
	}

	//funcion que busca cada uno de los valores 
	public function buscarNodo($value, $array) 
	{ 
		foreach($array as $key => $primerArray) {
	    	if(is_array($primerArray)){
				if(!array_search($value, $primerArray)){
					$this->buscarNodo($value, $primerArray);
				}else{
					return $primerArray[0];
				}
		    }else{
		    	//echo 'si';
		    }
		}

		
	} 



}


?>