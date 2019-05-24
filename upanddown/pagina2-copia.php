<html>
	<head>
		<title> test </title>
	</head>
	<body>
		hola
		<?php 
			echo 'error :' ;
	print_r($_FILES['archivo']['error']);
			print_r("--------");
			print_r($_FILES['archivo']['tmp_name']);
			print_r("--------");
			$dir_subida= "/var/www/html/descargas/";
			$fichero_subido = $dir_subida . basename($_FILES['archivo']['name']);
	
			echo $fichero_subido;
			move_uploaded_file($_FILES['archivo']['tmp_name'],$fichero_subido);
			/*$nombre_tmp = $_FILES['archivo']['tmp_name'];
			echo $nombre_tmp;
			$nombre = basename($_FILES['archivo']['name']);
			echo $nombre;
			*/
			copy($_FILES['archivo']['tmp_name'],$_FILES['archivo']['name']);
		?>
	
	</body>
</html>
