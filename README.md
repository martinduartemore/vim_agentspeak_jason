# AgentSpeak + Jason Syntax Highlighting for Vim
This project provides syntax highlighting files for two file types:
* `.mas2j`: [Jason](http://jason.sf.net) project files
* `.asl`: [AgentSpeak](https://en.wikipedia.org/wiki/AgentSpeak) files


## Instalation
Manual Instalation: copy files to their respective directories in your vim
folder (`~/.vim/`).

You can also use Vim plugin managers. Example using
[vim-plug](https://github.com/junegunn/vim-plug):

* Add the following to your `~/.vimrc`:
```vim
" You need to install vim-plugged first

call plug#begin('~/.vim/plugged')
Plug 'martinduartemore/vim_agentspeak_jason'
call plug#end()
```

* Restart Vim and run `:PlugInstall` to install the plugin


## Credits & Related Work
* jEdit syntax files provided in Jason instalation
* [jason-lang/atom-mas2j](https://github.com/jason-lang/atom-mas2j)
* [jason-lang/jason-eclipse-plugin](https://github.com/jason-lang/jason-eclipse-plugin)
* [wfdd/language-agentspeak](https://github.com/wfdd/language-agentspeak)
* [TimKam/code-mas2j](https://github.com/TimKam/code-mas2j)
* [Icemole/nano-highlight-asl](https://github.com/Icemole/nano-highlight-asl)
