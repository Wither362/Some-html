<!DOCTYPE html>
<html>
  <head>
    <!--<h1 style="color:blue;">A lot of things</h1>-->
  </head>
  <body>
    <?php // oye, perdón porque esto sea en inglés, es que me acostumbro y me gusta más, pero también hay cosas en español
switch (rand(0, 8)) { // esto es del título, si te das cuenta, a veces va cambiando de color
  case "0":
    echo "<h1 style='color:blue;'>A lot of things</h1>";
    break;
  case "1":
    echo "<h1 style='color:red;'>A lot of things</h1>";
    break;
  case "2":
    echo "<h1 style='color:green;'>A lot of things</h1>";
    break;
  case "3":
    echo "<h1 style='color:pink;'>A lot of things</h1>";
    break;
  case "4":
    echo "<h1 style='color:darkgreen;'>A lot of things</h1>";
    break;
  case "5":
    echo "<h1 style='color:darkblue;'>A lot of things</h1>";
    break;
  case "6":
    echo "<h1 style='color:darkred;'>A lot of things</h1>";
    break;
  case "7":
    echo "<h1 style='color:grey;'>A lot of things</h1>";
    break;
  default:
    echo "<h1 style='color:gray;'>A lot of things</h1>";
}
// esto es para escribir menos \\
$no = "it doesn't have";
$idk = "I don't know";

// Fruit time \\
class Fruit {
  public $name; public $othername; public $third_name; public $color; public $color2; public $color3; public $color4; public $colorwhenitisbad; public $inspanish; public $isstone; public $isspome; public $isgrane; public $isfresh; public $isdried; public $isclimacteric; public $iscitric; public $istropical; public $isforestfruit; public $isnut; public $isberry;
  function __construct($name, $othername, $third_name, $color, $colorwhenitisbad, $color2, $color3, $color4, $inspanish, $isstone, $isspome, $isgrane, $isfresh, $isdried, $isclimacteric, $iscitric, $istropical, $isforestfruit, $isnut, $isberry) {
    $this->name = $name; $this->other_name = $othername; $this->third_name = $third_name; $this->color = $color; $this->color_2 = $color2; $this->color_3 = $color3; $this->color_4 = $color4; $this->color_when_it_is_bad = $colorwhenitisbad; $this->en_espanol = $inspanish; $this->is_stone_fruit = $isstone; $this->is_pome_fruit = $isspome; $this->is_grain_fruit = $isgrain; $this->is_fresh = $isfresh; $this->is_dried = $isdried; $this->is_climacteric = $isclimacteric; $this->is_citric = $iscitric; $this->is_tropical = $istropical; $this->is_forest = $isforestfruit; $this->is_nut = $isnut; $this->is_berry = $isberry;}
  function get_name() {
    return $this->name;}
  function get_second_name() {
    return $this->other_name;}
  function get_third_name() {
    return $this->third_name;}
  function get_color() {
    return $this->color;}
  function get_second_color() {
    return $this->color_2;}
  function get_third_color() {
    return $this->color_3;}
  function get_fourth_color() {
    return $this->color_4;}
  function get_color_when_its_bad() {
    return $this->color_when_it_is_bad;}
  function get_en_espanol() {
    return $this->en_espanol;}
  function get_is_stone_fruit() {
    return $this->is_stone_fruit;}
  function get_is_pome_fruit() {
    return $this->is_pome_fruit;}
  function get_is_grain_fruit() {
    return $this->is_grain_fruit;}
  function get_is_fresh() {
    return $this->is_fresh;}
  function get_is_dried() {
    return $this->is_dried;}
  function get_is_climacteric() {
    return $this->is_climacteric;}
  function get_is_citric() {
    return $this->is_citric;}
  function get_is_tropical() {
    return $this->is_tropical;}
  function get_is_forest() {
    return $this->is_forest_fruit;}
  function get_is_nut() {
    return $this->is_nut;}
  function get_is_berry() {
    return $this->is_berry;}}

// fresh food time \\
class Fresh_food {public $name; public $freshmeat; public $freshfish; public $vegetables;
  function __construct($name, $freshmeat, $freshfish, $vegetables) {
    $this->name = $name; $this->it_is_a_fresh_meat = $freshmeat; $this->it_is_a_fresh_fish = $freshfish; $this->it_is_a_vegetable = $vegetable;}
  function get_name() {
    return $this->name;}
  function get_if_it_is_a_fresh_meat() {
    return $this->it_is_a_fresh_meat;}
  function get_if_it_is_a_fresh_fish() {
    return $this->it_is_a_fresh_fish;}
  function get_if_it_is_a_vegetable() {
    return $this->it_is_a_vegetable;}}

// food time \\
class Food {
  public $name; public $color; public $ingredients; public $thingsused; public $fromwhereitis; public $itisafruit; public $idiom; public $itisadulterated; public $itiscamping; public $itisdiet; public $itisfinger; public $itisfresh; public $itisfrozen;
  function __construct($name, $color, $ingredients, $thingsused, $fromwhereitis, $idiom/*, $itisadulterated, $itiscamping, $itisdiet, $itisfinger, $itisfresh, $itisfrozen*/) {
    $this->name = $name;  $this->color = $color; $this->ingredients = $ingredients; $this->things_used = $thingsused; $this->from_where_it_is = $fromwhereitis; $this->it_is_a_fruit = $itisafruit; $this->idiom = $idiom; $this->it_is_adulterated = $itisadulterated; $this->it_is_camping = $itiscamping; $this->it_is_diet = $itisdiet; $this->it_is_finger = $itisfinger; $this->it_is_fresh = $itisfresh; $this->it_is_frozen = $itisfrozen;}
  function get_name() {
    return $this->name;}
  function get_color() {
    return $this->color;}
  function get_ingredients() {
    return $this->ingredients;}
  function get_things_used() {
    return $this->things_used;}
  function get_from_where_it_is() {
    return $this->from_where_it_is;}
  function get_if_it_is_a_fruit() {
    return $this->it_is_a_fruit;}
  function get_idiom() {
    return $this->idiom;}
  function get_if_it_is_adulterated_food() {
    return $this->it_is_adulterated;}
  function get_if_it_is_camping_food() {
    return $this->it_is_camping;}
  function get_if_it_is_diet_food() {
    return $this->it_is_diet;}
  function get_if_it_is_finger_food() {
    return $this->it_is_finger;}
  function get_if_it_is_fresh_food() {
    return $this->it_is_fresh;}
  function get_if_it_is_frozen_food() {
    return $this->it_is_frozen;}}

// meat time \\
class Meat {
  public $name;
  public $nameoftheanimalthatthatmeatwas; 
  public $water; 
  public $proteins; 
  public $fat;

  function __construct($name, $nameoftheanimalthatthatmeatwas, $water, $proteins, $fat) {
    $this->name = $name; 
    $this->name_of_the_animal_that_that_meat_was = $nameoftheanimalthatthatmeatwas;
    $this->water = $water; 
    $this->proteins = $proteins; 
    $this->fat = $fat;
  }
  function get_name() {
    return $this->name;}
  function get_n_o_t_a_t_t_m_w() /* get_name_of_the_animal_that_that_meat_was() */{
    return $this->name_of_the_animal_that_that_meat_was;}
  function get_water() {
    return $this->water;}
  function get_proteins() {
    return $this->proteins;}
  function get_fat() {
    return $this->fat;}}

// fruits \\
//$name = new Fruit($name, $secondary_name, $third_name, $color, $color_when_it_is_bad, $color2, $color3, $color4, $en_Español, $is_stone, $is_spome, $is_grane, $is_fresh, $is_dried, $climacteric, $is_citric, $is_tropical, $is_forest_fruit, $is_nut, $is_berry);
$apple = new Fruit("Apple", "mistic fruit", "forbidden fruit", "red", "brown", "white", "green", "yellow", "manzana", "yes", "yes", $idk, $idk, $idk, "yes", "no", "no", $idk, "no", "no");
$banana = new Fruit("Banana", $no, $no, "yellow", "brown", "green", $no, $no, "plátano", $idk, $idk, $idk, $idk, $idk, "yes", "no", "yes", "no", "no", "yes");
$lemon = new Fruit("Lemon", $no, $no, "yellow", $idk, "green", $no, $no, "limón", $idk, $idk, $idk, $idk, $idk, "no", "yes", "no", "no", "no", $idk);
$strawberry = new Fruit("Strawberry", $no, $no, "red", "red-brown", "green", "white", "brown", "fresa", "yes", $idk, $idk, $idk, $idk, "yes", $idk, $idk, "yes", "no", $idk);
$orange = new Fruit("Orange", $no, $no, "orange", $idk, $no, $no, $no, "Naranja", $idk, $idk, $idk, $idk, $idk, "no", "yes", "no", $idk, "no", $idk);
$blueberry = new Fruit("Blueberry", $no, $no, "blue", "blue-brown", $idk, $idk, $idk, "arándano", $idk, $idk, $idk, $idk, $idk, $idk, $idk, $idk, "yes", "no", $idk);
$kiwi = new Fruit("Kiwi", $no, $no, "brown", $idk, "green", "yellow", $no, "kiwi", $idk, $idk, $idk, $idk, $idk, "yes", $idk, "yes", "no", "no", $idk);
$cherry = new Fruit("Cherry", $no, $no, "red", $idk, "green", $no, $no, "cereza", $idk, $idk, $idk, $idk, $idk, "no", $idk, $idk, "yes", "no", $idk);
$grape = new Fruit("Grape", $no, $no, "purple", $idk, "yellow", "red", $idk, "uva", $idk, $idk, $idk, $idk, $idk, "no", $idk, $idk, "no", "no", $idk);
$peach = new Fruit("Peach", $no, $no, "yellow", $idk, "red", "orange", $idk, "albaricoque", $idk, $idk, $idk, $idk, $idk, "yes", $idk, $idk, "no", "no", $idk);
$cherimoya = new Fruit("Cherimoya", "chirimuya", "chirimoya", "green", $idi, $idk, $idk, $idk, "chirimoya", $idk, $idk, $idk, $idk, $idk, "yes", $idk, $idk, $idk, "no", $idk);
$mandarin_orange = new Fruit("Mandarin orange", "mandarin", "mandarine", "orange", $idk, $idk, $idk, $idk, "mandarina", $idk, $idk, $idk, $idk, $idk, "no", "yes", "no", "no", "no", $idk);
$pineapple = new Fruit("Pineapple", "Ananas comosus", $no, "yellow", $idk, "brown", $idk, $idk, "piña", $idk, $idk, $idk, $idk, $idk, "no", "yes", "yes", "no", "no", $idk);
$lime = new Fruit("Lime", $no, $no, "green", $idk, "brown", $no, $idk, $idk, "lima", $idk, $idk, $idk, $idk, $idk, "yes", "yes", "yes", "no", "no", $idk);

// food \\
//$name = new Food($name, $color/s, $ingredients, $thingsused, $fromwhereitis, $enEspañol);
$lasagna = new Food("Lasagna", "White, red, brown, orange, yellow", "Meat, carrot (some times), tomato sauce, cheese", $idk, "It is from Italy", "Lasaña");
$pizza = new Food("Pizza", "White, red", $idk, $idk, $idk, "Pizza");
$cake = new Food("Cake", "a lot of colors", "flour, sugar, eggs, butter or oil or margarine, a liquid, and a leavening agent, such as baking soda or baking powder", $idk, $idk, "Tarta/Pastel/Torta");
$hamburger = new Food("Hamburger", "a lot of colors", $idk, $idk, $idk, "Hamburguesa");
$fries = new Food("Fries", "yellow", $idk, $idk, $idk, "Patatas fritas");

// fresh food \\

// meat \\
//$name = new Meat($name, $name_Of_The_Animal_That_That_Meat_Was, $water, $proteins, $fat);
$cowsteak = new Meat("Cow steak", "Cow", $idk, $idk, $idk);

// y lo demás \\
$co = '", "'; /*"co" de COmillas*/$bw = "but when it's bad it color is "; $coa = '" and "'; //"coa" de COmillas And
echo "<p1 style='color:red;'>F</p1>", "<p1 style='color:blue;'>r</p1>", "<p1 style='color:darkBlue;'>u</p1>", "<p1 style='color:brown;'>i</p1>", "<p1 style='color:purple;'>t</p1>", "<p1 style='color:green;'>s</p1>", "<br>", 'The fruit name is "';
switch ($randomizador = rand(0, 13)) { //13
  case "0":
    echo $banana->get_name();
    break;
  case "1":
    echo $lemon->get_name();
    break;
  case "2":
    echo $strawberry->get_name();
    break;
  case "3":
    echo $orange->get_name();
    break;
  case "4":
    echo $blueberry->get_name();
    break; case "5":
    echo $kiwi->get_name();
    break;
  case "6": 
    echo $cherry->get_name();
    break; 
  case "7": 
    echo $grape->get_name(); 
    break;
  case "8": 
    echo $peach->get_name();
    break;
  case "9": 
    echo $cherimoya->get_name();
    break; 
  case "10": 
    echo $mandarin_orange->get_name();
    break;
  case "11": 
    echo $pineapple->get_name(); 
    break;
  default: 
    echo $apple->get_name();
}
echo '",', "<br>", 'also called "';
switch ($randomizador) {
  case "0":
    echo $banana->get_second_name(); 
    break;
  case "1": 
    echo $lemon->get_second_name(); 
    break; 
  case "2": echo $strawberry->get_second_name(); break; case "3": echo $orange->get_second_name(); break; case "4": echo $blueberry->get_second_name(); break; case "5": echo $kiwi->get_second_name(); break; case "6": echo $cherry->get_second_name(); break; case "7": echo $grape->get_second_name(); break; case "8": echo $peach->get_second_name(); break; case "9": echo $cherimoya->get_second_name(); break; case "10": echo $mandarin_orange->get_second_name(); break;
  case "11": echo $pineapple->get_second_name(); break;
  default: echo $apple->get_second_name();}
echo '",', "<br>", 'and also "';
switch ($randomizador) {
  case "0": echo $banana->get_third_name(); break; case "1": echo $lemon->get_third_name(); break; case "2": echo $strawberry->get_third_name(); break; case "3": echo $orange->get_third_name(); break; case "4": echo $blueberry->get_third_name(); break; case "5": echo $kiwi->get_third_name(); break; case "6": echo $cherry->get_third_name(); break; case "7": echo $grape->get_third_name(); break; case "8": echo $peach->get_third_name(); break; case "9": echo $cherimoya->get_third_name(); break; case "10": echo $mandarin_orange->get_third_name(); break;
  case "11": echo $pineapple->get_third_name(); break;
  default: echo $apple->get_third_name();}
echo '",', "<br>", "it's colors are: ", '"';
switch ($randomizador) {
  case "0": echo $banana->get_color(), $co, $banana->get_second_color(), $co, $banana->get_third_color(), $coa, $banana->get_fourth_color(), '", ', $bw, '"', $banana->get_color_when_its_bad(); break;
  case "1": echo $lemon->get_color(), $co, $lemon->get_second_color(), $co, $lemon->get_third_color(), $coa, $lemon->get_fourth_color(), '", ', $bw, '"', $lemon->get_color_when_its_bad(); break;
  case "2": echo $strawberry->get_color(), $co, $strawberry->get_second_color(), $co, $strawberry->get_third_color(), $coa, $strawberry->get_fourth_color(), '", ', $bw, '"', $strawberry->get_color_when_its_bad(); break;
  case "3": echo $orange->get_color(), $co, $orange->get_second_color(), $co, $orange->get_third_color(), $coa, $orange->get_fourth_color(), '", ', $bw, '"', $orange->get_color_when_its_bad(); break;
  case "4": echo $blueberry->get_color(), $co, $blueberry->get_second_color(), $co, $blueberry->get_third_color(), $coa, $blueberry->get_fourth_color(), '"', $bw, '"', $blueberry->get_color_when_its_bad(); break;
  case "5": echo $kiwi->get_color(), $co, $kiwi->get_second_color(), $co, $kiwi->get_third_color(), $coa, $kiwi->get_fourth_color(), '", ', $bw, '"', $kiwi->get_color_when_its_bad(); break;
  case "6": echo $cherry->get_color(), $co, $cherry->get_second_color(), $co, $cherry->get_third_color(), $coa, $cherry->get_fourth_color(), '", ', $bw, '"', $cherry->get_color_when_its_bad(); break;
  case "7": echo $grape->get_color(), $co, $grape->get_second_color(), $co, $grape->get_third_color(), $coa, $grape->get_fourth_color(), '", ', $bw, '"', $grape->get_color_when_its_bad(); break;
  case "8": echo $peach->get_color(), $co, $peach->get_second_color(), $co, $peach->get_third_color(), $coa, $peach->get_fourth_color(), '", ', $bw, '"', $peach->get_color_when_its_bad(); break;
  case "9": echo $cherimoya->get_color(), $co, $cherimoya->get_second_color(), $co, $cherimoya->get_third_color(), $coa, $cherimoya->get_fourth_color(), '", ', $bw, '"', $cherimoya->get_color_when_its_bad(); break;
  case "10": echo $mandarin_orange->get_color(), $co, $mandarin_orange->get_second_color(), $co, $mandarin_orange->get_third_color(), $coa, $mandarin_orange->get_fourth_color(), '", ', $bw, '"', $mandarin_orange->get_color_when_its_bad(); break;
  case "11": echo $pineapple->get_color(), $co, $pineapple->get_second_color(), $co, $pineapple->get_third_color(), $coa, $pineapple->get_fourth_color(), '", ', $bw, '"', $pineapple->get_color_when_its_bad(); break;
  default: echo $apple->get_color(), $co, $apple->get_second_color(), $co, $apple->get_third_color(), $coa, $apple->get_fourth_color(), '", ', $bw, '"', $apple->get_color_when_its_bad();}
echo '",' . "<br>", "It's", ' name in Spanish is "';
switch ($randomizador) {
  case "0": echo $banana->get_en_espanol(); break; case "1": echo $lemon->get_en_espanol(); break; case "2": echo $strawberry->get_en_espanol(); break; case "3": echo $orange->get_en_espanol(); break; case "4": echo $blueberry->get_en_espanol(); break; case "5": echo $kiwi->get_en_espanol(); break; case "6": echo $cherry->get_en_espanol(); break; case "7": echo $grape->get_en_espanol(); break; case "8": echo $peach->get_en_espanol(); break; case "9": echo $cherimoya->get_en_espanol(); break; case "10": echo $mandarin_orange->get_en_espanol(); break;
  case "11": echo $pineapple->get_en_espanol(); break;
  default: echo $apple->get_en_espanol();}
echo '",'/*, "<br>", 'Is this fruit a stone fruit?: "'*/;
/*switch ($randomizador) {
  case "0": echo $banana->get_is_stone_fruit(); break;
}
echo '",', "<br>";*/
?></body></html><!-- ya está, listo no? -->
