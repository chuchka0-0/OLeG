# Задание 1

1. ```
   set
   ```

2. ```
   MY_LOCAL_VAR = "local_var_value"

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

# Задание 2

1.
2.
3.
4.

# Задание 3

1.
2.

# Задание 4

1.
2.
```
