const fs = require('fs/promises');
const { exec, getPathWithSystemEnvVar } = require('./shared');

const LIST_EXTENSIONS_COMMAND = 'code --list-extensions';
const WRITE_PATH = '$DOTFILES/vscode/extensions.json';

(async () => {
  const { stdout } = await exec(LIST_EXTENSIONS_COMMAND);
  const extensions = stdout
    .split('\n')
    .map((ext) => ({ name: ext.split('.')[1], downloadName: ext }))
    .filter(({ name }) => Boolean(name))
    .sort((a, b) => a.name.localeCompare(b.name));

  const fileContent = { quantity: extensions.length, extensions };
  const path = await getPathWithSystemEnvVar(WRITE_PATH);

  await fs.writeFile(path.trim(), JSON.stringify(fileContent, null, 2));
})();
