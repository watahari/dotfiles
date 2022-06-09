case "${OSTYPE}" in
darwin*)
  eval $(/opt/homebrew/bin/brew shellenv)
  eval "$(anyenv init -)"
  ;;
esac
