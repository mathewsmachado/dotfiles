# vscode

**Obs**: When you change some settings through vscode interface, it inserts these settings automatically into the configurations files. The '"none": "none"' line at the end of the files is to separate the unorganized settings from the organized ones.

## settings.json

**Description**: Vscode configuration file.

**Setup**: ln -s ~/dotfiles/vscode/settings.json ~/.config/Code/User

## keybindings.json

**Description**: Vscode keybindings file.

**Setup**: ln -s ~/dotfiles/vscode/keybindings.json ~/.config/Code/User

**Obs**: Since the important things on this file are: the name of the command, if it was binded/unbinded and the key, the 80 characters rule won't be respected to improve the readability of the things said before.

## global.code-snippets

**Description**: Vscode snippets file.

**Setup**: ln -s ~/dotfiles/vscode/global.code-snippets ~/.config/Code/User/snippets

**Obs**: Snippets are ordered by 'prefix' key.

**Visual Studio Code built-in tutorial to create snippets**:

```json
1) Each snippet is defined under a snippet name and has a scope, prefix, body and description.
2) Add comma separated ids of the languages where the snippet is applicable in the scope field. If scope is left empty or omitted, the snippet gets applied to all languages.
3) The prefix is what is used to trigger the snippet and the body will be expanded and inserted.
4) Possible variables are: $1, $2 for tab stops, $0 for the final cursor position, and ${1:label}, ${2:another} for placeholders. Placeholders with the same ids are connected.
5) JSON do not supports line breaks. Add commas for line breaks in the same body.
6) Example:
"Print to console": {
    "scope": "javascript,javascriptreact,typescript,typescriptreact",
    "prefix": "log",
    "body": [
        "console.log('$1');",
        "$2"
    ],
    "description": "Log output to console"
}
```

## extensions.json

**Description**: Vscode extensions list file.

**Setup to install extensions from file**: node ~/dotfiles/vscode/scripts/installExtensionsFromFile.js

**Setup to update extensions file**: node ~/dotfiles/vscode/scripts/updateExtensionsFile.js

**Obs**:

- Install extensions from file before update the extensions file.
- There are some places that stores the user's extensions on vscode, but none of them are trustable.

  - The first place is the 'extensions' folder, that is under ~/.vscode, but it isn't trustable because it keeps extensions that were already uninstalled.

  - The second place is a file called 'user', that is stored under ~/.config/Code/CachedExtensions, but it isn't trustable because it disappears for sometime every time you install an extension.

  - To document my extensions, I developed a Node.js script that runs a vscode command that lists the installed extensions, and then stores it into a JSON file. There're two scripts: one that stores the extensions into the file, and one that picks the extensions from this file and install them in vscode.
