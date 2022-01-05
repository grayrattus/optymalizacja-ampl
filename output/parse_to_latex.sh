rm tmp*;
name="tmp_c_C_1"; for i in $(cat test | grep "cC\[1" | cut -d \' -f 3 | tr -d ' '); do printf "%g\n" $i >> $name; done
name="tmp_c_C_2"; for i in $(cat test | grep "cC\[2" | cut -d \' -f 3 | tr -d ' '); do printf "%g\n" $i >> $name; done
name="tmp_c_C_3"; for i in $(cat test | grep "cC\[3" | cut -d \' -f 3 | tr -d ' '); do printf "%g\n" $i >> $name; done
name="tmp_c_C_4"; for i in $(cat test | grep "cC\[4" | cut -d \' -f 3 | tr -d ' '); do printf "%g\n" $i >> $name; done

name="tmp_w_C"; for i in $(cat test | grep "w\['C" | cut -d \" -f 3 | tr -d ' '); do printf "%g\n" $i >> $name; done
name="tmp_w_M"; for i in $(cat test | grep "w\['M" | cut -d \" -f 3 | tr -d ' '); do printf "%g\n" $i >> $name; done
name="tmp_w_S"; for i in $(cat test | grep "w\['S" | cut -d \" -f 3 | tr -d ' '); do printf "%g\n" $i >> $name; done

name="tmp_s_C"; for i in $(cat test | grep "s\['C" | cut -d \" -f 3 | tr -d ' '); do printf "%g\n" $i >> $name; done
name="tmp_s_M"; for i in $(cat test | grep "s\['M" | cut -d \" -f 3 | tr -d ' '); do printf "%g\n" $i >> $name; done
name="tmp_s_S"; for i in $(cat test | grep "s\['S" | cut -d \" -f 3 | tr -d ' '); do printf "%g\n" $i >> $name; done

name="tmp_p"; for i in $(cat test | grep "14.*p" | cut -d p -f 2 | tr -d ' '); do printf "%.2e\n" $i >> $name; done
name="tmp_koszt_prod"; for i in $(cat test | grep "15.*koszt_prod" | cut -d d -f 2 | tr -d ' '); do printf "%.2e\n" $i >> $name; done
name="tmp_max_praca"; for i in $(cat test | grep "maxPraca = " | cut -d = -f 2 | tr -d ' '); do printf "%.1e\n" $i >> $name; done
name="tmp_zysk"; for i in $(cat test | grep ".*objective " | sed 's/.*objective //g' | tr -d ' '); do printf "%.3e\n" $i >> $name; done

ls tmp* | xargs | sed 's/ /\&/g' > last.txt
paste -d '&' tmp* | sed 's/&/ &/g' | column -t >> last.txt

echo 'Maksymalna praca& $c_C_1$& $c_C_2$& $c_C_3$& $c_C_4$' > progi.txt
paste -d '&' tmp_max_praca tmp_c_C_1 tmp_c_C_2 tmp_c_C_3 tmp_c_C_4 | sed 's/&/ &/g' | column -t >> progi.txt

echo 'Maksymalna praca& $p$& Zysk & $w_S$& $s_S$& $w_M$& $s_M$& $w_C$& $s_C$&' > sprzedaz.txt
paste -d '&' tmp_max_praca tmp_p tmp_zysk tmp_w_S tmp_s_S tmp_w_M tmp_s_M tmp_w_C tmp_s_C | sed 's/&/ &/g' | column -t >> sprzedaz.txt




