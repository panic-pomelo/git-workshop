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
git push

echo "## Commiting changes"
touch "example.txt"

echo "initial text" >> example.txt
git add .
git commit -m "Edito example.txt"

echo "some text" >> "example.txt"
git add .
git commit -m "sTe comyt tiene taipos"

git push