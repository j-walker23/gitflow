
EXEC_FILES="git-hf"
SCRIPT_FILES="git-hf-init git-hf-feature git-hf-hotfix git-hf-push git-hf-pull git-hf-release git-hf-support git-hf-update git-hf-upgrade git-hf-version git-hf-tag hubflow-common hubflow-shFlags"

for each in $SCRIPT_FILES;do curl "https://raw.githubusercontent.com/j-walker23/gitflow/master/$each" > $each; chmod +x $each;done
