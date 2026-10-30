# Задание 1

1. ```bash
   set
   ```

2. ```bash
   MY_LOCAL_VAR="local_var_value"
   ```

   <!--Переоткрываем терминал/смотрим в новом окне-->

   ```bash
   echo "$MY_LOCAL_VAR"
   ```

3. ```bash
   echo 'MY_SHELL_VAR="shell_var_value"' >> ~/.bashrc
   source ~/.bashrc

   echo "$MY_SHELL_VAR"
   ```

4. ```bash
   echo 'MY_GLOBAL_VAR="global_var_value"' | sudo tee -a /etc/environment

   echo "$MY_GLOBAL_VAR"
   python3 -c 'import os; print(os.getenv("MY_GLOBAL_VAR"))'
   ```

   <!--Чтобы файл считался, нужно перезапустить виртуалку-->

# Задание 2

1. ```bash
   groups
   ```

/etc/shadow
/etc/gshadow

2. ```bash
   sudo groupadd -p "qwerty" new_group
   mkdir -p new_group_dir
   echo "tyazhelo" > new_group_dir/test_file.txt
   ```

3. ```bash
   chmod 770 new_group_dir/test_file.txt
   sudo chown root:new_group new_group_dir/test_file.txt
   ls -lh new_group_dir/test_file.txt
   ```

4. ```bash
   echo "kapes tyazhelo" > new_group_dir/test_file.txt
   ```

   <!--Переоткрываем терминал-->

   ```bash
   sudo usermod -aG new_group $USER
   newgrp new_group
   ```

   ```bash
   echo "User currently in the group" >> new_group_dir/test_file.txt
   cat new_group_dir/test_file.txt
   ```

# Задание 3

1. ```bash
   sudo ln -s "$PWD/new_group_dir/test_file.txt" /usr/local/bin/tf
   sudo chmod 700 /usr/local/bin/tf
   sudo chown root /usr/local/bin/tf
   ls -l /usr/local/bin/tf
   ```

   ```bash
   cat /usr/local/bin/tf
   cat new_group_dir/test_file.txt
   ```

2. ```bash
   alias lr='ls -l'
   lr
   ```
   
   <!--lr после переоткрытия терминала работать не будет(-->

   ```bash
   echo "alias lr='ls -l'" >> ~/.bashrc
   source ~/.bashrc
   lr
   ```

# Задание 4

1. ```bash
   sleep 1200&
   ```

   kill --help
   kill -l


   ```bash
   jobs
   
   kill -s SIGSTOP %1
   kill -s SIGCONT %1
   kill -s SIGTERM %1
   ```

2. ```bash
   sudo apt install tmux
   ```

   ```bash
   tmux new -d -s session1
   tmux new -d -s session2

   tmux send-keys -t session1 'cat' Enter
   tmux send-keys -t session2 'echo "the second session"' Enter

   tmux ls
   ```

   ```bash
   tmux attach -t session1
   ```

   Остановить задачу cat: `Ctrl + C`

   Отключиться от сессии: `Ctrl + B`, затем `D`

   ```bash
   tmux kill-session -t session1

   tmux attach -t session2
   id
   ```