git status
git add .
git commit -m "new branch" 
git tag -a v1.0.0 -m "first release"
git push --follow-tags    

- to automate semantic versioning run:
==> npm install semantic-release @semantic-release/git @semantic-release/github -D
- this will install semantic versioning for git and for github.
- In the main directory, creare a file called release.config.json. it will tell github which plugin to use. 