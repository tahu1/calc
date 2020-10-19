in="y"
jumlah() {
   echo ""
   echo "Jumlah"
   echo -n "Silahkan Masukkan Angka : "
   read a
   echo "                          +"
   echo -n "                          "
   read b
   echo "                         ------------------------------------- ="
   echo -n "                  hasil : "
   expr $a + $b
}
minus() {
   echo ""
   echo "Kurang"
   echo -n "Silahkan Masukkan Angka : "
   read c
   echo "                          -"
   echo -n "                          "
   read d
   echo "                         ------------------------------------- ="
   echo -n "                  hasil : "
   expr $c - $d
}
kali() {
   echo ""
   echo "Kali"
   echo -n "Silahkan Masukkan Angka : "
   read e
   echo "                          x"
   echo -n "                          "
   read f
   echo "                         ------------------------------------- ="
   echo -n "                  hasil : "
   expr $e \* $f
}
bagi() {
   echo ""
   echo "Bagi"
   echo -n "Silahkan Masukkan Angka : "
   read g
   echo "                          :"
   echo -n "                          "
   read h
   echo "                         ------------------------------------- ="
   echo -n "                  hasil : "
   expr $g / $h
}
opsi=1
while [ $opsi ]
 do
  echo -n "Login? [y/n] : "
  read log
  if [ "$log" == "$in" ]
  then
   echo ""
   echo  "Calculator Shell"
   echo  "[1]. JUMLAH"
   echo  "[2]. KURANG"
   echo  "[3]. KALI"
   echo  "[4]. BAGI"
   echo -n "input :"
   read opsi
   case $opsi in
	1)jumlah
	;;
	2)minus
	;;
	3)kali
	;;
	4)bagi
	;;
	*)echo "gada"
   esac
  else
   echo "wajib loginnnn"
   sleep 3
  fi
done
