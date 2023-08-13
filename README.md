git status
git add .
git commit -m "new branch" 
git tag -a v1.0.0 -m "first release"
git push --follow-tags    

- to automate semantic versioning run:
==> npm install semantic-release @semantic-release/git @semantic-release/github -D
- this will install semantic versioning for git and for github.
- In the main directory, creare a file called release.config.json. it will tell github which plugin to use.
release.config.json:
  module.exports = {
    branches: "main", # it will tell it what branch to monitor
    repositoryUrl: "https://github.com/flawlez18/sast-tfsec.git", #The repository url
    pluggins: [
        '@semantic-release/commit-analyzer', # The pluggin that will analyse your commits
        '@semantic-release/release-notes-generator', 
        '@semantic-release/git',
        '@semantic-release/github']
}

Semantic versioning Commit messages:
The commit message needs prefix. The analyzer will read the commit messages prefix in order to udnerstand how to assign version.
  fix: minor version 
  feat: for new feature
  BREAKING CHANGE: # use this so that it will tell the its going to cause major changes
name: shell commands 

update girt workflow yaml file with:
            - name: release
              run: npx semantic-release
              env:
                GITHUB_TOKEN: ${{secrets.GITHUB_TOKEN}}
           