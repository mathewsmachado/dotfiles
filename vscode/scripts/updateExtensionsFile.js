const fs = require('fs/promises');
const { EXTENSIONS_PATH, exec } = require('./shared');

const LIST_EXTENSIONS_COMMAND = 'code --list-extensions';

(async () => {
  const { stdout } = await exec(LIST_EXTENSIONS_COMMAND);
  const extensions = stdout
    .split('\n')
    .map((ext) => ({ name: ext.split('.')[1], downloadName: ext }))
    .filter(({ name }) => Boolean(name))
    .sort((a, b) => a.name.localeCompare(b.name));
  const fileContent = { quantity: extensions.length, extensions };

  await fs.writeFile(
    EXTENSIONS_PATH.trim(),
    JSON.stringify(fileContent, null, 2)
  );
})();
