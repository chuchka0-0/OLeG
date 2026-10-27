# Задание 1

<!--
1 пункт:
git config --global user.name "chuchka"
git config --global user.email "moyapochta@chuchka.com"
git config --global init.defaultBranch "main"
git init
-->

1. ```
   mkdir bebebe && cd bebebe && ls
   git init
   git status
   ```

2. ```
   touch text.txt
   git add text.txt
   git commit -m "init: text.txt"
   git log
   ```

3. ```
    echo "Hochu spat" >> text.txt
    git add text.txt
    git commit -m "feat: add message in text.txt"
    git log
   ```

4. ```
   git checkout HEAD~1

   ИЛИ

   git switch --detach HEAD~1
   cat text.txt
   git switch master
   ```

````

<!--При использовании 1 коментированного блока, а не пункта 1 вместо master пропишем main-->

5. ```
   git diff HEAD~1 HEAD
   git log
````

# Задание 2

1. ```
   git branch vetka
   ```
2. ```
   git switch vetka
   ```  
3.
4.
5.
