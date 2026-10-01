# git push, then copy a GitLab, GitHub, or Bitbucket request URL to the clipboard.

gpx() {
  local out url
  out=$(git push "$@" 2>&1)
  printf '%s\n' "$out"
  url=$(printf '%s\n' "$out" | grep -oE 'https://[^[:space:]]*/(merge_requests|pull-requests|pull)[^[:space:]]*' | head -n1)
  if [[ -n $url ]]; then
    if printf '%s' "$url" | clipcopy; then
      printf '\nCopied: %s\n' "$url"
    else
      printf 'Clipboard unavailable: %s\n' "$url" >&2
    fi
  fi
}
