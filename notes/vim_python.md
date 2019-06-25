# Vim as Python IDE, pyon apac Jun 11, 2012
    - most in audience using python
    - uses tmux + vim for python dev
    - uses only a single screen due to tmux!
    - For debugging, ipython and ipdb, short cut key in vim to create breakpoints
    - uses pylint and pep8 for static analysis
    - looks like vim has to be built with python enabled in order to use the python plugin
    - on this centos7 install, vim --version shows +python and -python3 so maybe it will work?
# Debugging with ipython and ipdb
    - install ipdb: conda install -c conda-forge ipdb
        - without this you have to use pdb which doesnt have syntax highlighting, command completion etc...
        - to set a breakpoint: ipdb.set_trace()
# Autopep8
    - au FileType python setlocal formatprg=autopep8\ -
    - Now when you select lines in python and hit gq (the default mapping unless you remapped it). It will filter the lines through autopep8 and writes the nicely formatted version in place.
    - The setting above also make it work with vim objects and vim motions, so you could rerender a paragraph (well lines of python code with no blank line between) using gqap.
    - To do the whole file you could do gggqG
