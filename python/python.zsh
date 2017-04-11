# Enable pyenv and pyenv-virtualenv
#
# See https://github.com/yyuu/pyenv-virtualenv
#
# Install python version:
#     pyenv install 3.5.1
#
# Setup a python project:
#     cd my/project
#     venv 3.5.1 projname
#     pyenv local projname
#
# Change python versions:
#     pyenv shell VERSION
#
# Set global python version:
#     pyenv global VERSION
#
# Read more at:
#  http://akbaribrahim.com/managing-multiple-python-versions-with-pyenv/
#  http://blog.froehlichundfrei.de/2014/11/30/my-transition-to-python3-and-pyenv-goodby-virtualenvwrapper.html

# disable the builtin prompt since it's managed by ZSH
export VIRTUAL_ENV_DISABLE_PROMPT=1

# NOTE: for convenience since prezto sets the pyenv PATH
export PYENV_ROOT="$HOME/.pyenv"

# NOTE: prezto provides 'pyenv init' already
eval "$(pyenv virtualenv-init -)"

# virtualenv aliases
alias venv='pyenv virtualenv'
alias activate='pyenv activate'
alias deactivate='pyenv deactivate'
# enable pydoc in virtualenvs
alias pydoc='python -m pydoc'

alias nose='nosetests -vs --pdb'
