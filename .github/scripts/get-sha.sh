remote=$( git ls-remote -h https://github.com/$1 $2 | tee /dev/fd/2 )
echo sha=$(echo $remote | cut -d ' ' -f1 | tr -d '[:blank:]' ) >> "$GITHUB_OUTPUT"
