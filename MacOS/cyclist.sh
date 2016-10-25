#!/bin/sh
if [ -x /bin/zsh ]; then
  export ZSH_PATH=`zsh -c 'source ~/.zshrc &> /dev/null ; echo $PATH'`
  if [ ! -z "$ZSH_PATH" ]; then
    export PATH="${PATH}:${ZSH_PATH}"
  fi
fi
if [ -x /bin/zsh ]; then
  export BASH_PATH=`bash -c 'source ~/.bashrc &> /dev/null ; echo $PATH'`
  if [ ! -z "$BASH_PATH" ]; then
    export PATH="${PATH}:${BASH_PATH}"
  fi
fi
  if [ -x /bin/zsh ]; then
  export TCSH_PATH=`tcsh -c 'source ~/.tcshrc &> /dev/null ; echo $PATH'`
  if [ ! -z "$TCSH_PATH" ]; then
    export PATH="${PATH}:${TCSH_PATH}"
  fi
fi

logger "`dirname \"$0\"`/Cyclist"

exec "`dirname \"$0\"`/Cyclist" $@
