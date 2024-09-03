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
git push

echo "## Commiting changes"
touch "example.txt"

echo "initial text" >> example.txt
echo "some text" >> example.txt
git add .
git commit -m "agreo nuev fetur"

git push