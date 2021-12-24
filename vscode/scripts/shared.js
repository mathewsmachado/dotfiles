const os = require('os');
const child_process = require('child_process');
const { promisify } = require('util');

const EXTENSIONS_PATH = `${
  os.userInfo().homedir
}/dotfiles/vscode/extensions.json`;

const exec = promisify(child_process.exec);

module.exports = { EXTENSIONS_PATH, exec };
