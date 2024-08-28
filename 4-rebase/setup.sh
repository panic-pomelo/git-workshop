echo "## Deleting previous exercise"
rm -rf exercise/
rm -rf exercise-origin.git

echo "## Creating origin"
git -c init.defaultBranch="master" init --bare exercise-origin.git

echo "## Creating local"
git -c init.defaultBranch="master" init exercise
cd exercise
git remote add origin ../exercise-origin.git
git commit --allow-empty -m "Initial commit"
git push -u origin master

echo "## Commiting changes"
git checkout -b feature

touch "migracion-hub-java-secreto.txt"

echo "Paso 1. Instalar java 1.0" >> migracion-hub-java-secreto.txt
git add .
git commit -m "Agrego paso 1 migración"

sed -i "" "1 s/.*/Paso 1'. Instalar Java 1.1/" migracion-hub-java-secreto.txt
git add .
git commit -m "Fix para paso 1"

echo "Paso 2. ???" >> migracion-hub-java-secreto.txt
git add .
git commit -m "<mensaje erróneo>"

echo "Paso 3. Profit!" >> migracion-hub-java-secreto.txt
git add .
git commit -m "Agrego paso 3 migración"

git push -u origin feature