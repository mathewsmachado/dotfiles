# .tmux.conf
**Description**: Tmux config file.

**Setup**: ln - s $DOTFILES/tmux/.tmux.conf $HOME

**Obs**: If some shortcut isn't working, see if your terminal emulator doesn't has the same shortcuts.

## DICTIONARY
### flags
- **-g**: global
- **-n**: root = a command that don't need the prefix
- **-r**: repeatable = a command that you just need to press the prefix once

### keys
- **C-**: ctrl
- **M-**: meta (better known as alt)
- **S-**: shift

### keywords
- **set**: defines something, not necessarily related to a key
- **bind**: attach a key to a command
- **unbind**: detach a key of a command

## GOOD TO KNOW
### multiple commands
You can use \\; to separate multiple commands in a single key binding (two "\\" were used because of markdown, on a real config file, use only one).

**Ex**: bind t new-window \\; display-message "new window opened"

## RESOURCES
1. [A Quick and Easy Guide to tmux](https://www.hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/)

2. [Making tmux Pretty and Usable - A Guide to Customizing your tmux.conf](https://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/)

3. [tmux: making a conf file](http://www.deanbodenham.com/learn/tmux-conf-file.html)

4. [Everything you need to know about tmux – Configuration](https://arcolinux.com/everthing-you-need-to-know-about-tmux-configuration/)

5. [Binding Keys in tmux](https://www.seanh.cc/2020/12/28/binding-keys-in-tmux/)

6. [Thales Mello dotfiles](https://github.com/thalesmello/dotfiles/blob/master/tmux.conf)