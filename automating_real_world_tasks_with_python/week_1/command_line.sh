student-000@linux-instance:~$ curl -c ./cookie -s -L "https://drive.                                                                                        google.com/uc?export=download&id=$11hg55-dKdHN63yJP20dMLAgPJ5oiTOHF" > /dev/null                                                                                         | curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '                                                                                        /download/ {print $NF}' ./cookie`&id=11hg55-dKdHN63yJP20dMLAgPJ5oiTOHF" -o image                                                                                        s.zip && sudo rm -rf cookie
awk: cannot open ./cookie (No such file or directory)
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   388    0   388    0     0    107      0 --:--:--  0:00:03 --:--:--   107
100  327k  100  327k    0     0  89070      0  0:00:03  0:00:03 --:--:-- 89070
student-000@linux-instance:~$ ls
images.zip
student-000@linux-instance:~$ unzip images.zip
Archive:  images.zip
   creating: images/
  inflating: images/ic_local_gas_station_white_48dp
  inflating: images/ic_local_library_black_48dp
  inflating: images/ic_local_mall_white_48dp
  inflating: images/ic_local_convenience_store_white_48dp
  inflating: images/ic_directions_run_white_48dp
  inflating: images/ic_local_movies_white_48dp
  inflating: images/ic_near_me_black_48dp
  inflating: images/ic_navigation_white_48dp
  inflating: images/ic_directions_car_white_48dp
  inflating: images/ic_hotel_white_48dp
  inflating: images/ic_directions_railway_white_48dp
  inflating: images/ic_local_pizza_white_48dp
  inflating: images/ic_local_dining_black_48dp
  inflating: images/ic_layers_white_48dp
  inflating: images/ic_local_play_black_48dp
  inflating: images/ic_local_cafe_black_48dp
  inflating: images/ic_local_printshop_white_48dp
  inflating: images/ic_local_hotel_black_48dp
  inflating: images/ic_local_see_white_48dp
  inflating: images/ic_directions_walk_black_48dp
  inflating: images/ic_flight_black_48dp
  inflating: images/ic_directions_white_48dp
  inflating: images/ic_local_bar_black_48dp
  inflating: images/ic_local_atm_black_48dp
  inflating: images/ic_my_location_black_48dp
  inflating: images/ic_local_taxi_white_48dp
  inflating: images/ic_local_phone_black_48dp
  inflating: images/ic_local_activity_white_48dp
  inflating: images/ic_local_shipping_black_48dp
  inflating: images/ic_local_drink_white_48dp
  inflating: images/ic_local_florist_white_48dp
  inflating: images/ic_layers_clear_white_48dp
  inflating: images/ic_directions_transit_white_48dp
  inflating: images/ic_directions_bike_white_48dp
  inflating: images/ic_directions_subway_black_48dp
  inflating: images/ic_add_location_white_48dp
  inflating: images/ic_local_airport_black_48dp
  inflating: images/ic_local_laundry_service_white_48dp
  inflating: images/ic_local_hospital_black_48dp
  inflating: images/ic_local_car_wash_black_48dp
  inflating: images/ic_beenhere_black_48dp
  inflating: images/ic_edit_location_white_48dp
  inflating: images/ic_local_grocery_store_black_48dp
  inflating: images/ic_directions_boat_white_48dp
  inflating: images/ic_map_white_48dp
  inflating: images/ic_local_offer_black_48dp
  inflating: images/ic_local_pharmacy_white_48dp
  inflating: images/ic_local_post_office_white_48dp
  inflating: images/ic_directions_bus_white_48dp
  inflating: images/ic_ev_station_white_48dp
  inflating: images/ic_hotel_black_48dp
  inflating: images/ic_directions_car_black_48dp
  inflating: images/ic_local_printshop_black_48dp
  inflating: images/ic_local_cafe_white_48dp
  inflating: images/ic_local_play_white_48dp
  inflating: images/ic_local_dining_white_48dp
  inflating: images/ic_layers_black_48dp
  inflating: images/ic_directions_railway_black_48dp
  inflating: images/ic_local_pizza_black_48dp
  inflating: images/ic_local_convenience_store_black_48dp
  inflating: images/ic_local_mall_black_48dp
  inflating: images/ic_local_library_white_48dp
  inflating: images/ic_local_gas_station_black_48dp
  inflating: images/ic_navigation_black_48dp
  inflating: images/ic_local_parking_white_48dp
  inflating: images/ic_local_movies_black_48dp
  inflating: images/ic_directions_run_black_48dp
  inflating: images/ic_local_hospital_white_48dp
  inflating: images/ic_local_airport_white_48dp
  inflating: images/ic_local_laundry_service_black_48dp
  inflating: images/ic_add_location_black_48dp
  inflating: images/ic_directions_bike_black_48dp
  inflating: images/ic_directions_subway_white_48dp
  inflating: images/ic_directions_transit_black_48dp
  inflating: images/ic_ev_station_black_48dp
  inflating: images/ic_directions_bus_black_48dp
  inflating: images/ic_local_post_office_black_48dp
  inflating: images/ic_local_pharmacy_black_48dp
  inflating: images/ic_local_offer_white_48dp
  inflating: images/ic_map_black_48dp
  inflating: images/ic_directions_boat_black_48dp
  inflating: images/.DS_Store
  inflating: images/ic_local_grocery_store_white_48dp
  inflating: images/ic_beenhere_white_48dp
  inflating: images/ic_edit_location_black_48dp
  inflating: images/ic_local_car_wash_white_48dp
  inflating: images/ic_my_location_white_48dp
  inflating: images/ic_local_atm_white_48dp
  inflating: images/ic_local_bar_white_48dp
  inflating: images/ic_directions_black_48dp
  inflating: images/ic_flight_white_48dp
  inflating: images/ic_directions_walk_white_48dp
  inflating: images/ic_local_see_black_48dp
  inflating: images/ic_local_hotel_white_48dp
  inflating: images/ic_layers_clear_black_48dp
  inflating: images/ic_local_florist_black_48dp
  inflating: images/ic_local_drink_black_48dp
  inflating: images/ic_local_shipping_white_48dp
  inflating: images/ic_local_activity_black_48dp
  inflating: images/ic_local_phone_white_48dp
  inflating: images/ic_local_taxi_black_48dp
student-000@linux-instance:~$ cd images
student-000@linux-instance:~/images$ ls
ic_add_location_black_48dp             ic_local_dining_black_48dp
ic_add_location_white_48dp             ic_local_dining_white_48dp
ic_beenhere_black_48dp                 ic_local_drink_black_48dp
ic_beenhere_white_48dp                 ic_local_drink_white_48dp
ic_directions_bike_black_48dp          ic_local_florist_black_48dp
ic_directions_bike_white_48dp          ic_local_florist_white_48dp
ic_directions_black_48dp               ic_local_gas_station_black_48dp
ic_directions_boat_black_48dp          ic_local_gas_station_white_48dp
ic_directions_boat_white_48dp          ic_local_grocery_store_black_48dp
ic_directions_bus_black_48dp           ic_local_grocery_store_white_48dp
ic_directions_bus_white_48dp           ic_local_hospital_black_48dp
ic_directions_car_black_48dp           ic_local_hospital_white_48dp
ic_directions_car_white_48dp           ic_local_hotel_black_48dp
ic_directions_railway_black_48dp       ic_local_hotel_white_48dp
ic_directions_railway_white_48dp       ic_local_laundry_service_black_48dp
ic_directions_run_black_48dp           ic_local_laundry_service_white_48dp
ic_directions_run_white_48dp           ic_local_library_black_48dp
ic_directions_subway_black_48dp        ic_local_library_white_48dp
ic_directions_subway_white_48dp        ic_local_mall_black_48dp
ic_directions_transit_black_48dp       ic_local_mall_white_48dp
ic_directions_transit_white_48dp       ic_local_movies_black_48dp
ic_directions_walk_black_48dp          ic_local_movies_white_48dp
ic_directions_walk_white_48dp          ic_local_offer_black_48dp
ic_directions_white_48dp               ic_local_offer_white_48dp
ic_edit_location_black_48dp            ic_local_parking_white_48dp
ic_edit_location_white_48dp            ic_local_pharmacy_black_48dp
ic_ev_station_black_48dp               ic_local_pharmacy_white_48dp
ic_ev_station_white_48dp               ic_local_phone_black_48dp
ic_flight_black_48dp                   ic_local_phone_white_48dp
ic_flight_white_48dp                   ic_local_pizza_black_48dp
ic_hotel_black_48dp                    ic_local_pizza_white_48dp
ic_hotel_white_48dp                    ic_local_play_black_48dp
ic_layers_black_48dp                   ic_local_play_white_48dp
ic_layers_clear_black_48dp             ic_local_post_office_black_48dp
ic_layers_clear_white_48dp             ic_local_post_office_white_48dp
ic_layers_white_48dp                   ic_local_printshop_black_48dp
ic_local_activity_black_48dp           ic_local_printshop_white_48dp
ic_local_activity_white_48dp           ic_local_see_black_48dp
ic_local_airport_black_48dp            ic_local_see_white_48dp
ic_local_airport_white_48dp            ic_local_shipping_black_48dp
ic_local_atm_black_48dp                ic_local_shipping_white_48dp
ic_local_atm_white_48dp                ic_local_taxi_black_48dp
ic_local_bar_black_48dp                ic_local_taxi_white_48dp
ic_local_bar_white_48dp                ic_map_black_48dp
ic_local_cafe_black_48dp               ic_map_white_48dp
ic_local_cafe_white_48dp               ic_my_location_black_48dp
ic_local_car_wash_black_48dp           ic_my_location_white_48dp
ic_local_car_wash_white_48dp           ic_navigation_black_48dp
ic_local_convenience_store_black_48dp  ic_navigation_white_48dp
ic_local_convenience_store_white_48dp  ic_near_me_black_48dp
student-000@linux-instance:~/images$ pip3 install pillow
Collecting pillow
  Downloading https://files.pythonhosted.org/packages/56/3d/f3031fe0a88b797fd09e                                                                                        e0772f611e65be34f30263eefb838cce8f367e75/Pillow-7.2.0-cp35-cp35m-manylinux1_x86_                                                                                        64.whl (2.2MB)
    100% |████████████████████████████████| 2.2MB 598kB/s
Installing collected packages: pillow
Successfully installed pillow-7.2.0
student-000@linux-instance:~/images$ nano image_correct.py
student-000@linux-instance:~/images$ status
-bash: status: command not found
student-000@linux-instance:~/images$ git status
-bash: git: command not found
student-000@linux-instance:~/images$ cd
student-000@linux-instance:~$ nano image_correct.py
student-000@linux-instance:~$ chmod =x image_correct.py
student-000@linux-instance:~$ ./image_correct.py
python3: can't open file './image_correct.py': [Errno 13] Permission denied
student-000@linux-instance:~$ ls -l
total 336
---x--x--x 1 student-000 student-000    343 Aug 21 19:45                                                                                         image_correct.py
drwxr-xr-x 2 student-000 student-000   4096 Aug 21 19:43                                                                                         images
-rw-r--r-- 1 student-000 student-000 335486 Aug 21 19:38                                                                                         images.zip
student-000@linux-instance:~$ chmod +x image_correct.py
student-000@linux-instance:~$ ./image_correct.py
python3: can't open file './image_correct.py': [Errno 13] Permission denied
student-000@linux-instance:~$ cat image_correct.py
cat: image_correct.py: Permission denied
student-000@linux-instance:~$ cd images
student-000@linux-instance:~/images$ nano image_correct.py
student-000@linux-instance:~/images$ chmod +x image_correct.py
student-000@linux-instance:~/images$ ./image_correct.py
student-000@linux-instance:~/images$ ls /opt/icons
ic_add_location_black_48dp             ic_local_dining_black_48dp
ic_add_location_white_48dp             ic_local_dining_white_48dp
ic_beenhere_black_48dp                 ic_local_drink_black_48dp
ic_beenhere_white_48dp                 ic_local_drink_white_48dp
ic_directions_bike_black_48dp          ic_local_florist_black_48dp
ic_directions_bike_white_48dp          ic_local_florist_white_48dp
ic_directions_black_48dp               ic_local_gas_station_black_48dp
ic_directions_boat_black_48dp          ic_local_gas_station_white_48dp
ic_directions_boat_white_48dp          ic_local_grocery_store_black_48dp
ic_directions_bus_black_48dp           ic_local_grocery_store_white_48dp
ic_directions_bus_white_48dp           ic_local_hospital_black_48dp
ic_directions_car_black_48dp           ic_local_hospital_white_48dp
ic_directions_car_white_48dp           ic_local_hotel_black_48dp
ic_directions_railway_black_48dp       ic_local_hotel_white_48dp
ic_directions_railway_white_48dp       ic_local_laundry_service_black_48dp
ic_directions_run_black_48dp           ic_local_laundry_service_white_48dp
ic_directions_run_white_48dp           ic_local_library_black_48dp
ic_directions_subway_black_48dp        ic_local_library_white_48dp
ic_directions_subway_white_48dp        ic_local_mall_black_48dp
ic_directions_transit_black_48dp       ic_local_mall_white_48dp
ic_directions_transit_white_48dp       ic_local_movies_black_48dp
ic_directions_walk_black_48dp          ic_local_movies_white_48dp
ic_directions_walk_white_48dp          ic_local_offer_black_48dp
ic_directions_white_48dp               ic_local_offer_white_48dp
ic_edit_location_black_48dp            ic_local_parking_white_48dp
ic_edit_location_white_48dp            ic_local_pharmacy_black_48dp
ic_ev_station_black_48dp               ic_local_pharmacy_white_48dp
ic_ev_station_white_48dp               ic_local_phone_black_48dp
ic_flight_black_48dp                   ic_local_phone_white_48dp
ic_flight_white_48dp                   ic_local_pizza_black_48dp
ic_hotel_black_48dp                    ic_local_pizza_white_48dp
ic_hotel_white_48dp                    ic_local_play_black_48dp
ic_layers_black_48dp                   ic_local_play_white_48dp
ic_layers_clear_black_48dp             ic_local_post_office_black_48dp
ic_layers_clear_white_48dp             ic_local_post_office_white_48dp
ic_layers_white_48dp                   ic_local_printshop_black_48dp
ic_local_activity_black_48dp           ic_local_printshop_white_48dp
ic_local_activity_white_48dp           ic_local_see_black_48dp
ic_local_airport_black_48dp            ic_local_see_white_48dp
ic_local_airport_white_48dp            ic_local_shipping_black_48dp
ic_local_atm_black_48dp                ic_local_shipping_white_48dp
ic_local_atm_white_48dp                ic_local_taxi_black_48dp
ic_local_bar_black_48dp                ic_local_taxi_white_48dp
ic_local_bar_white_48dp                ic_map_black_48dp
ic_local_cafe_black_48dp               ic_map_white_48dp
ic_local_cafe_white_48dp               ic_my_location_black_48dp
ic_local_car_wash_black_48dp           ic_my_location_white_48dp
ic_local_car_wash_white_48dp           ic_navigation_black_48dp
ic_local_convenience_store_black_48dp  ic_navigation_white_48dp
ic_local_convenience_store_white_48dp  ic_near_me_black_48dp
student-000@linux-instance:~/images$ python3
Python 3.5.3 (default, Jul  9 2020, 13:00:10)
[GCC 6.3.0 20170516] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> from PIL import Image
>>> img = Image.open("/opt/icons/ic_edit_location_black_48dp")
>>> img.format, img.size
('JPEG', (128, 128))
>>> exit()
