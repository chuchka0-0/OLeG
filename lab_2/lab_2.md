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

1. ```
   sudo ln -s "$PWD/new_group_dir/test_file.txt" /usr/local/bin/tf
   sudo chmod 700 /usr/local/bin/tf
   sudo chown root /usr/local/bin/tf
   ls -l /usr/local/bin/tf
   ```

   <!--// поменять путь, открыть виртуалку, чекнуть $PATH и выбрать чото....-->

   ```
   cat /usr/local/bin/tf
   cat new_group_dir/test_file.txt
   ```

2. ```
      alias lr='ls -l'
      lr
   ```

      <!--Команда работать не будет(-->

   ```
   echo "alias lr='ls -l'" >> ~/.bashrc
   source ~/.bashrc
   lr
   ```

# Задание 4

1. ```
      ps
      sleep 555
      traceroute !!!!!DOPISAT!!!
   ```

   Останавливаем процесс, тыкаем: `Ctrl + Z`

   ```
   jobs
   fg %2
   ```

   Завершаем процесс, тыкаем: `Ctrl + X`

2. ```
         sudo apt install tmux
   ```

   ```
   tmux new-session -d -s session1
   tmux new-session -d -s session2

   tmux send-keys -t session1 'cat' Enter
   tmux send-keys -t session2 'echo "the second session"' Enter

   tmux ls
   ```

   ```
   tmux attach -t session1
   ```

   Остановить задачу cat: `Ctrl + C`

   Отключиться от сессии: `Ctrl + B`, затем `D`

   ```
   tmux kill-session -t session1

   tmux attach -t session2
   id
   ```
