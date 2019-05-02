# Borrowed from http://sangsoonam.github.io/2016/08/02/publish-gitbook-to-your-github-pages.html

# install the plugins and build the static site
gitbook install && gitbook build

git add .
git commit -m"update master"
git push origin master

# checkout to the gh-pages branch
git checkout gh-pages

# copy the static site files into the current directory.
cp -R _book/* .

# remove 'node_modules' and '_book' directory
git clean -fx node_modules
git clean -fx _book

# add all files
git add .

# commit
git commit -a -m "Update docs"

# push to the origin
git push origin gh-pages

# checkout to the master branch
git checkout master
