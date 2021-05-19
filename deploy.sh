BUILD_DIR=_site
USERNAME="vivarium-collective"
DEPLOY_BRANCH=gh-pages

if [[ $(git remote -v) == *"@"* ]]; then
    GITHUBREMOTE="git@github.com:$USERNAME/$USERNAME.github.io.git"
else
    GITHUBREMOTE="https://github.com/$USERNAME/$USERNAME.github.io.git"
fi

# Build Website
JEKYLL_ENV=production bundle exec jekyll build

# To avoid leaking git history, re-generate each time
if [ -d "$BUILD_DIR/.git/" ]; then
    rm -rf "$BUILD_DIR/.git"
fi

git -C "$BUILD_DIR" init
git -C "$BUILD_DIR" add -A
git -C "$BUILD_DIR" commit -m 'deploy'
src_branch=$(git -C $BUILD_DIR rev-parse --abbrev-ref HEAD)
git -C "$BUILD_DIR" push -f "$GITHUBREMOTE" $src_branch:$DEPLOY_BRANCH
