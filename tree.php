
<?php



#koneksi mysql
$konek = mysqli_connect('localhost','root','','tree');
#end koneksi

 

function html_menu(&$strmenu="", $parent=0) {

 //die ($query); 
$konek = mysqli_connect('localhost','root','','tree');
  $sql = mysqli_query($konek,"SELECT kd_menu, kd_parent, nm_menu, link
     FROM menu WHERE kd_parent='$parent'
     ORDER BY kd_menu");

	 if (mysqli_num_rows($sql) > 0) { 
	  $strmenu .= '<ul>';
	 }

 // tampilkan anaknya

		 while ($row = mysqli_fetch_assoc($sql)) {
		  $strmenu .= "<li>";
		  $strmenu .= sprintf("<a href='%s' title='%s'>%s</a>", $row['link'], $row['nm_menu'], $row['nm_menu']);
		  //panggil diri sendiri
		  html_menu($strmenu, $row['kd_menu']);
		  $strmenu .= "</li>";
		 }

	 if (mysqli_num_rows($sql) > 0){
	  $strmenu .= '</ul>';
	 }
}

$strmenu = "";
html_menu($strmenu, 0);
echo $strmenu;
?>
