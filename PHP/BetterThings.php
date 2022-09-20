<!DOCTYPE html><!--copyright Wither362, 2021-2022, DO NOT COPY!! unless you credit me pinche hijo pvta -->
<html>
<head>
</head>
<body>
<?php
$noes = 'no especificado.<br>';
$frutas = array( // nombre - colores<Array> - se usa en<Array>
  array('Manzana', array('Amarillo', 'Verde', 'Rojo'), array('Tartas', 'Pasteles', 'Compota', 'Zumo'), array('Manzano')),
  array('Plátano', array('Amarillo', 'Marrón'), array('Tartas', 'Pasteles', 'Batido')),
  array('Limón', array('Amarillo'), array('Tartas', 'Pasteles', 'Limonada')),
  array('Naranja', array('Naranja'), array('Tartas', 'Pasteles', 'Zumos')),
  array('Albaricoque', array('Naranja', 'Marrón')),
  array('Fresa', array('Roja', 'Marrón'), array('Tartas', 'Pasteles', 'Batido')),
  array('Fresón', array('Rojo', 'Marrón', 'Blanco')),
  array('Arándano', array('Azul'))
);
$comidas = array( // nombre - ingredientes
  array('Lasaña', array('Queso', 'Carne'))
);

$todo = array($frutas, $comidas);

echo '<h3>Lista de frutas</h3>';
for ($i = 0; $i < count($frutas); $i++) {
  echo '- ', $frutas[$i][0], '.<br>';
}
echo '<br><h3>Colores de las frutas</h3>';
for ($i = 0; $i < count($frutas); $i++) {
  echo $frutas[$i][0], ': ';
  if($frutas[$i][1] != null) {
    for ($a = 0; $a < count($frutas[$i][1]); $a++) {
      echo $frutas[$i][1][$a];
      if($frutas[$i][1][$a + 2] == null && $frutas[$i][1][$a + 1] != null) {
        echo ' y ';
      } else if($frutas[$i][1][$a + 1] != null) {
        echo ', ';
      } else {
        echo '.<br>';
      }
    }
  } else {
    echo $noes;
  }
}
echo '<br><h3>Recetas</h3>';
for ($i = 0; $i < count($frutas); $i++) {
  echo $frutas[$i][0], ': ';
  if($frutas[$i][2] != null) {
    for ($a = 0; $a < count($frutas[$i][2]); $a++) {
      echo $frutas[$i][2][$a];
      if($frutas[$i][2][$a + 2] == null && $frutas[$i][2][$a + 1] != null) {
        echo ' y ';
      } else if($frutas[$i][2][$a + 1] != null) {
        echo ', ';
      } else {
        echo '.<br>';
      }
    }
  } else {
    echo $noes;
  }
}
echo '<br><h3>Árbol</h3>';
for ($i = 0; $i < count($frutas); $i++) {
  echo $frutas[$i][0], ': ';
  if($frutas[$i][3] != null) {
    for ($a = 0; $a < count($frutas[$i][3]); $a++) {
      echo $frutas[$i][3][$a];
      if($frutas[$i][3][$a + 2] == null && $frutas[$i][3][$a + 1] != null) {
        echo ' y ';
      } else if($frutas[$i][3][$a + 1] != null) {
        echo ', ';
      } else {
        echo '.<br>';
      }
    }
  } else {
    echo $noes;
  }
}
?>
</body>
</html>
