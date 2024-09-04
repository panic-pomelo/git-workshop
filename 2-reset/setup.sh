echo "## Deleting previous exercise"
rm -rf exercise/
rm -rf exercise-origin.git

echo "## Creating local origin"
git -c init.defaultBranch="main" init --bare exercise-origin.git

echo "## Creating local repository"
git -c init.defaultBranch="main" init exercise
cd exercise
git remote add origin ../exercise-origin.git
git commit --allow-empty -m "Initial commit"
git push -u origin main

echo "## Commiting changes"
git checkout -b feature

touch "debt.go"
touch "creditline.go"

echo "debt code" >> debt.go
git add .
git commit -am "chore: wip debt"

echo "creditline code" >> creditline.go
git add .
git commit -am "chore: wip creditline"

echo "creditline code" >> creditline.go
git commit -am "chore: wip creditline"

echo "debt code" >> debt.go
git commit -am "chore: wip debt"

echo "debt code" >> debt.go
git commit -am "chore: wip debt"

echo "creditline code" >> creditline.go
git commit -am "chore: wip creditline"

git push -u origin feature