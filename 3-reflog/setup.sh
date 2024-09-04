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
git checkout -b feature/plan

touch "plan-negocio.txt"

echo "Vender barato" >> plan-negocio.txt

git add .
git commit -m "Plan de negosioz"
git push -u origin feature/plan

git checkout main
git checkout -b feature/receta

touch "receta-cangreburger.txt"

echo "Lechuga" >> receta-cangreburger.txt
git add .
git commit -am "Ingrediente 1"

echo "Tomate" >> receta-cangreburger.txt
git add .
git commit -am "Ingrediente 3"

echo "Esponjas" >> receta-cangreburger.txt
git commit -am "Ingrediente secreto"

git push -u origin feature/receta

git checkout main