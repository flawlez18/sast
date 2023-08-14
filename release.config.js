module.exports = {
    branches: "main", 
    repositoryUrl: "https://github.com/flawlez18/sast-tfsec.git",
    pluggins: [
        '@semantic-release/commit-analyzer', 
        '@semantic-release/release-notes-generator',
        '@semantic-release/git',
        '@semantic-release/github']
}