const { promisify } = require('util');
const exec = promisify(require('child_process').exec);

async function getPathWithSystemEnvVar(path) {
  const { stdout } = await exec(`echo ${path}`);

  return stdout;
}

module.exports = { exec, getPathWithSystemEnvVar };
