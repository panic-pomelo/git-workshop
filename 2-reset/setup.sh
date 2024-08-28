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

touch "contacts.go"
touch "pmc.go"

echo "contacts code" >> contacts.go
git add .
git commit -am "wip contacts"

echo "pmc code" >> pmc.go
git add .
git commit -am "wip pmc"

echo "pmc code" >> pmc.go
git commit -am "wip pmc"

echo "contacts code" >> contacts.go
git commit -am "wip contacts"

echo "contacts code" >> contacts.go
git commit -am "wip contacts"

echo "pmc code" >> pmc.go
git commit -am "wip pmc"

git push -u origin feature