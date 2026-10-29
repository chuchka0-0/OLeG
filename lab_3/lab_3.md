# Задание 1

<!--
1 пункт:
git config --global user.name "chuchka"
git config --global user.email "moyapochta@chuchka.com"
git config --global init.defaultBranch "main"
git init
-->

1. ```bash
   mkdir bebebe && cd bebebe && ls
   git init
   git status
   ```

2. ```bash
   touch text.txt
   git add text.txt
   git commit -m "init: text.txt"
   git log
   ```

3. ```bash
    echo "Hochu spat" >> text.txt
    git add text.txt
    git commit -m "feat: add message in text.txt"
    git log
   ```

4. ```bash
   git checkout HEAD~1

   ИЛИ

   git switch --detach HEAD~1
   cat text.txt
   git switch master
   ```

   <!--При использовании 1 коментированного блока, а не пункта 1 вместо master пропишем main-->

5. ```bash
   git diff HEAD~1 HEAD
   git log
   ```

# Задание 2

1. ```bash
   git branch vetka
   ```
2. ```bash
   git switch vetka
   ```

3. ```bash
   echo "i kushat" >> text.txt

   git add text.txt
   git commit -m "feat: add message in text.txt"

   git switch master
   echo "ochen" >> text.txt
   git add text.txt
   git commit -m "feat: add message in file"
   ```

   <!--При использовании 1 коментированного блока, а не пункта 1 вместо master пропишем main-->

4. ```bash
   git merge vetka
   git diff master vetka
   vim text.txt
   git add text.txt
   git commit -m "fix: fix conflicts"
   ```

   <!--При использовании 1 коментированного блока, а не пункта 1 вместо master пропишем main-->

5. Прошла уровни на сайте. Решения заданий: 

### Введение №1

```bash
git commit
git commit
```

### Введение №2

```bash
git checkout -b bugFix
```

### Введение №3

```bash
git checkout -b bugFix
git commit
git checkout main
git commit
git marge bugFix
```

### Введение №4

```bash
git checkout -b bugFix
git commit
git checkout main
git commit
git checkout bugFix
git rebase main
```

### Едем дальше №1

```bash
git checkout C4
```

### Едем дальше №2

```bash
git checkout bugFix^
```

### Едем дальше №3

```bash
git branch -f main C6
git checkout C1
git branch -f bugFix HEAD~1
```

### Едем дальше №4

```bash
git reset HEAD~1
git checkout pushed
git revert C2
```

