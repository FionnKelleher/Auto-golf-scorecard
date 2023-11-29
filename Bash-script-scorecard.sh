#!/bin/sh
printf "Welcome to Automatic golf scorecard! \033[1;31mplease\033[0m do not input a/an in any of the questions. (1 for yes, 0 for no)\n"
read -p "What did you score on hole #1? " one
read -p "Did you hit the fairway?" eno
read -p "Did you hit the green in regulation?" ggq
read -p "What did you score on hole #2?" two
read -p "Did you hit the fairway?" owt
read -p "Did you hit the green in regulation?" ggw
read -p "What did you score on hole #3?" thr
read -p "Did you hit the fairway?" rth
read -p "Did you hit the green in regulation?" gge 
read -p "What did you score on hole #4?" fou
read -p "Did you hit the fairway?" ouf
read -p "Did you hit the green in regulation?" ggr
read -p "What did you score on hole #5?" fiv
read -p "Did you hit the fairway?" vif
read -p "Did you hit the green in regulation?" ggt
read -p "What did you score on hole #6?" six
read -p "Did you hit the fairway?" xis
read -p "Did you hit the green in regulation?" ggy
read -p "What did you score on hole #7?" sev
read -p "Did you hit the fairway?" ves
read -p "Did you hit the green in regulation?" ggu
read -p "What did you score on hole #8?" eig
read -p "Did you hit the fairway?" gie
read -p "Did you hit the green in regulation?" ggi
read -p "What did you score on hole #9?" nin
read -p "Did you hit the fairway?" non
read -p "Did you hit the green in regulation?" ggo
printf "Your score is `expr $one + $two + $thr + $fou + $fiv + $six + $sev + $eig + $nin`."
printf " You hit `expr $eno + $owt + $rth + $ouf + $vif + $xis + $ves + $gie + $non` fairways"
printf " and `expr $ggq + $ggw + $gge + $ggr + $ggt + $ggy + $ggu + $ggi + $ggo` greens."
printf " Congratulations!"
read -p " Save to file? (y/n) " saveyorn
case $saveyorn in # check user's input
  "y")
    read -p "Enter filename. " filename
    if [ -f "$filename" ]; then # check if file exists
      echo "Overwriting $filename. ^C to cancel."
      sleep 1 # wait to see if user cancels
      printf "Score: $(($one+$two+$thr+$fou+$fiv+$six+$sev+$eig+$nin))\n" > $filename # overwrite file
      printf "Fairways hit: $(($eno+$owt+$rth+$ouf+$vif+$xis+$ves+$gie+$non))\n" >> $filename # append to file
      printf "Greens hit: $(($ggq+$ggw+$gge+$ggr+$ggt+$ggy+$ggu+$ggi+$ggo))\n" >> $filename   # append to file
      printf saved to $filename
    else # if file doesn't exist
      echo Error: file does not exist.
      exit 3
    fi
  ;;
  "n")
    exit 1
  *)
    # if user's input is neither "y" nor "n"
    echo Invalid option.
    exit 2
esac
