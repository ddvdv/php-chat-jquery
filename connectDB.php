<?php

$whitelist = array(
    '127.0.0.1',
    '::1'
);

if(!in_array($_SERVER['REMOTE_ADDR'], $whitelist)){
	try{
		$bdd = new PDO('mysql:host=localhost;dbname=id2658640_phpchat;charset=utf8', 'id2658640_ddvdv', 'ddvdv');
	} catch (Exception $e){
		    echo('Erreur : ' . $e->getMessage());
	}
}else{
	try{
		$bdd = new PDO('mysql:host=localhost;dbname=chatPhp;charset=utf8', 'root', 'root');
	} catch (Exception $e){
		    echo('Erreur : ' . $e->getMessage());
	}
}