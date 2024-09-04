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

echo
echo "## Commiting changes"
echo

touch "receta-pastas.txt"
echo "Ingredientes:" >> receta-pastas.txt

git add .
git commit -m "Receta inicial"

git checkout -b feature

echo "- Huevo" >> receta-pastas.txt
git add .
git commit -m "Agrego huevo"
git push -u origin feature

git checkout main

echo "- Harina" >> receta-pastas.txt
git add .
git commit -m "Agrego harina"
git push
