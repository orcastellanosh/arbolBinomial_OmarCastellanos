<?php

/*
* Codigo realizado por Omar Ricardo Castellanos Hernandez
* arbol binomial el cual busca el padre en comun mas cercano entre 2 nodos
* correo: omarricardocastellanos@gmail.com
*
*/

include "../Model/BinomialModel.class.php";
include "../Controller/BinomialController.class.php";

$BinomialModel = new BinomialModel();
$BinomialController = new BinomialController();
$datosNodos = json_decode($BinomialModel->selectData());
/*
  listar todos los posts o solo uno
 */
if ($_SERVER['REQUEST_METHOD'] == 'GET')
{
	if(!isset($_GET['valor1'])){
		echo 'el valor "valor1" no esta definido';
	}else if (!isset($_GET['valor2'])){
		echo 'el valor "valor2" no esta definido';
	}else{
		$datosN=[];
		foreach ($datosNodos as $key => $value) {
			$datosN[$key][0] =  (int)$value->padre;	
			$datosN[$key][1] =  (int)$value->hijo;	
		}

		$valorBuscado1 = $BinomialController->buscarNodo($_GET['valor1'], $datosN);
		if($valorBuscado1 != '')
		{
			$valorBuscado2 = $BinomialController->buscarNodo($_GET['valor2'], $datosN);
			if($valorBuscado2 != '')
			{

				echo $BinomialController->buscarPadreComun($valorBuscado1, $valorBuscado2, $datosN);	
			}
		}else{
			echo 'El valor no existe en la base de datos';
		}
	}

}
?>