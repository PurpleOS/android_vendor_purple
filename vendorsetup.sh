for combo in $(curl -s https://raw.githubusercontent.com/PurpleOS/devices/nougat/build-targets | sed -e 's/#.*$//' | awk '{printf "purple_%s-%s\n", $1, $2}')
do
    add_lunch_combo $combo
done
