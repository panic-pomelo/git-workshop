echo "## Deleting previous exercise"
rm -rf exercise/
rm -rf exercise-origin.git

echo "## Creating origin"
git -c init.defaultBranch="main" init --bare exercise-origin.git

echo "## Creating local"
git -c init.defaultBranch="main" init exercise
cd exercise
git remote add origin ../exercise-origin.git
git commit --allow-empty -m "Initial commit"
git push -u origin main

echo "## Commiting changes"
git checkout -b feature

touch "migracion-deuda-go-secreto.txt"

echo "Paso 1. Instalar Go 1.20" >> migracion-deuda-go-secreto.txt
git add .
git commit -m "feat: Agrego paso 1 migración"

sed -i "" "1 s/.*/Paso 1'. Instalar Go 2/" migracion-deuda-go-secreto.txt
git add .
git commit -m "chore: Fix para paso 1"

echo "Paso 2. ???" >> migracion-deuda-go-secreto.txt
git add .
git commit -m "<mensaje erróneo>"

echo "Paso 3. Profit!" >> migracion-deuda-go-secreto.txt
git add .
git commit -m "feat: Agrego paso 3 migración"

git push -u origin feature