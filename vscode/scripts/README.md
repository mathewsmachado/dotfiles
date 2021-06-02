# scripts

**Obs**:

- If you pass a path with a system environment variable to some 'fs' method, like $HOME, it will not recognize it. This is what makes the 'shared.js/getPathWithSystemEnvVar' function necessary.

- 'trim()' is being used alongside 'fs' because it is adding a new line to every path that is passed as param to any of its methods, making them wrong.
