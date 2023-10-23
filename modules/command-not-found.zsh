command_not_found_handler() {
  local pkgs cmd="$1"

  pkgs=(${(f)"$(pkgfile -b -v -- "$cmd" 2>/dev/null)"})
  if [[ -n "$pkgs" ]]; then
    printf 'The application %s is not installed. It may be found in the following packages:\n' "$cmd"
    printf '  %s\n' $pkgs[@]
    setopt shwordsplit
    pkg_array=($pkgs[@])
    pkgname="${${(@s:/:)pkg_array}[2]}"
    printf 'Do you want to install package %s? (y/N) ' $pkgname
    if read -q "choice? "; then
      echo
      echo "Installing package $pkgname..."
      if sudo pacman -S $pkgname; then
        echo "Package $pkgname successfully installed."
      else
        echo "Error: Failed to install package $pkgname."
      fi
    else
      echo " "
    fi
  else
    printf 'zsh: command not found: %s\n' "$cmd"
  fi 1>&2

  return 127
}