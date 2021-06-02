const fs = require('fs/promises');
const { exec, getPathWithSystemEnvVar } = require('./shared');

const INSTALL_EXTENSIONS_COMMAND = 'code --install-extension';
const READ_PATH = '$DOTFILES/vscode/extensions.json';

(async () => {
  const path = await getPathWithSystemEnvVar(READ_PATH);
  const { extensions } = JSON.parse(await fs.readFile(path.trim(), 'utf-8'));

  extensions.forEach(async ({ downloadName }) => {
    const { stdout } = await exec(
      `${INSTALL_EXTENSIONS_COMMAND} ${downloadName}`
    );

    console.log(stdout);
  });
})();
