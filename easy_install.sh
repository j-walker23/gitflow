
EXEC_FILES="git-hf"
SCRIPT_FILES="git-hf-init git-hf-feature git-hf-bug git-hf-chore git-hf-refactor git-hf-hotfix git-hf-push git-hf-pull git-hf-release git-hf-support git-hf-update git-hf-upgrade git-hf-version git-hf-tag hubflow-common hubflow-shFlags"

REPO_DIR="$(dirname $0)"

echo "Installing hubflow to $INSTALL_INTO"

if [ -z "$INSTALL_INTO" ] ; then
    INSTALL_INTO="/usr/local/bin"
fi

for each in $EXEC_FILES ; do
    curl "https://raw.githubusercontent.com/j-walker23/gitflow/master/$each" > $each
    install -v -m 0755 "$REPO_DIR/$each" "$INSTALL_INTO"
done

for each in $SCRIPT_FILES ; do
    curl "https://raw.githubusercontent.com/j-walker23/gitflow/master/$each" > $each;
    install -v -m 0644 "$REPO_DIR/$each" "$INSTALL_INTO"
done
