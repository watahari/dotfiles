case "${OSTYPE}" in
darwin*)
  eval $(/opt/homebrew/bin/brew shellenv)
  eval "$(anyenv init -)"
  ;;
esac
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock
