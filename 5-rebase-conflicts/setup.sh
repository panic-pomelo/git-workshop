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

echo
echo "## Commiting changes"
echo

touch "receta-pico-pastas.txt"
echo "Ingredientes:" >> receta-pico-pastas.txt

git add .
git commit -m "Receta inicial"

git checkout -b feature

echo "- Huevo" >> receta-pico-pastas.txt
git add .
git commit -m "Agrego huevo"
git push -u origin feature

git checkout master

echo "- Harina" >> receta-pico-pastas.txt
git add .
git commit -m "Agrego harina"
git push
