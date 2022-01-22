firstRow="292 & 179 & 114 & 247 & 426 & 259";
secRow="-128 & 560 & 648 & 544 & 182 & 850";
thirdRow="420 & 187 & 366 & 249 & 322 & 159";
fourthRow="579 & 639 & 379 & 924 & 5 & 569";

printData() {
  sum=$(echo $1 | sed -s 's/&/+/g' | bc -l)
  avg=$(echo $(echo $1 | sed -s 's/&/+/g' | bc -l) / 6 | bc -l)

  printf "%s & %d & %1.0f" "$1" $sum $avg;
  echo 
}

printData "$firstRow"
printData "$secRow"
printData "$thirdRow"
printData "$fourthRow"

