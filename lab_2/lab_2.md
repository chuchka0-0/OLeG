# Задание 1

1. ```
   set
   ```

2. ```
   MY_LOCAL_VAR = "local_var_value"
   ```

   <!--Переоткрываем терминал/смотрим в новом окне-->

   ```
   echo "$MY_LOCAL_VAR"
   ```

3. ```
   echo 'MY_SHELL_VAR="shell_var_value"' >> ~/.bashrc
   source ~/.bashrc

   echo $MY_SHELL_VAR"
   ```

4. ```
   echo 'MY_GLOBAL_VAR="global_var_value"' | sudo tee -a /etc/environment

   echo "$MY_GLOBAL_VAR"
   python3 -c 'import os; print(os.getenv("MY_GLOBAL_VAR"))'
   ```

   <!--Чтобы файл считался, нужно перезапустить виртуалку-->

# Задание 2

1. ```
   groups
   ```

2. ```
   sudo groupadd new_group
   sudo gpasswd new_group
   mkdir -p new_group_dir
   echo "tyazhelo" > new_group_dir/test_file.txt
   ```

3. ```
   chmod 770 new_group_dir/test_file.txt
   sudo chown root:new_group new_group_dir/test_file.txt
   ls -lh new_group_dir/test_file.txt
   ```

4. ```
   echo "kapes tyazhelo" > new_group_dir/test_file.txt
   ```
   
   <!--Переоткрываем терминал/виртуалку-->

   ```
   sudo usermod -aG new_group $USER
   newgrp new_group
   ```
   
   <!--Переоткрываем терминал/виртуалку-->

   ```
   echo "User currently in the group" >> new_group_dir/test_file.txt
   cat new_group_dir/test_file.txt
   ```

# Задание 3

1.
2.

# Задание 4

1.
2.
