# Add the following part to $ZSH/tools/upgrade.sh before the last line (exit $ret)

# BEGIN: Update custom plugins
printf "${BLUE}%s${NORMAL}\n" "Upgrading custom plugins"
cd custom/plugins

for plugin in */; do
  if [ -d "$plugin/.git" ]; then
    printf "${YELLOW}%s${RESET}\n" "${plugin%/}"

    if git -C "$plugin" pull --rebase; then
      printf "${BLUE}%s${NORMAL}\n" "The $plugin has been updated and/or is at the latest version."
    else
      printf "${RED}%s${NORMAL}\n" "There was an error updating the $plugin. Try again later?"
    fi
  fi
done
# END: Update custom plugins
