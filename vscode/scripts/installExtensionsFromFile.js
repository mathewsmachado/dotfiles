const fs = require('fs/promises');
const { EXTENSIONS_PATH, exec } = require('./shared');

const INSTALL_EXTENSIONS_COMMAND = 'code --install-extension';

(async () => {
  const file = await fs.readFile(EXTENSIONS_PATH.trim(), 'utf-8');
  const { extensions } = JSON.parse(file);

  extensions.forEach(async ({ downloadName }) => {
    const { stdout } = await exec(
      `${INSTALL_EXTENSIONS_COMMAND} ${downloadName}`
    );

    console.log(stdout);
  });
})();
