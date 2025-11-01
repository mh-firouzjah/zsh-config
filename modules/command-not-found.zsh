command_not_found_handler() {
  local cmd="$1"

  # Check if the system-provided handler exists (e.g. Fedora / openSUSE)
  if [[ -x /usr/libexec/pk-command-not-found ]]; then
    /usr/libexec/pk-command-not-found "$cmd"
    return $?
  fi

  # Fallback for Arch-based systems using pkgfile
  local pkgs
  pkgs=(${(f)"$(pkgfile -b -v -- "$cmd" 2>/dev/null)"})

  if (( ${#pkgs[@]} )); then
    printf 'The application "%s" is not installed. It may be found in the following packages:\n' "$cmd"
    printf '  %s\n' $pkgs[@]

    # Extract the package name (e.g. "extra/foo" → "foo")
    local pkgname="${${(s:/:)pkgs[1]}[2]}"

    printf 'Do you want to install package "%s"? (y/N) ' "$pkgname"
    if read -q "choice? "; then
      echo
      echo "Installing package $pkgname..."
      if sudo pacman -S "$pkgname"; then
        echo "Package $pkgname successfully installed."
      else
        echo "Error: Failed to install package $pkgname."
      fi
    else
      echo
    fi
  else
    printf 'zsh: command not found: %s\n' "$cmd" >&2
  fi

  return 127
}
