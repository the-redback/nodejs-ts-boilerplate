# nodejs-ts-boilerplate
> Boilerplate project for nodejs typescript

![License][license-image]
[![GitHub Actions][github-image]][github-url]
[![GitHub Actions Docker][docker-ci-image]][github-url]
[![Known Vulnerabilities][snyk-image]][snyk-url]
[![TypeScript Style Guide][gts-image]][gts-url]
![code size][code-size-image]
<!-- [![codecov][codecov-image]][codecov-url] -->

---

## Use As Template

To use it as template of a project, click the button `Use this template`.

Find and replace the word `nodejs-ts-boilerplate` with `<new-project-name>`. Most of the changes will be in `README` file and `project name` in `package.json` file. IDE (e.g. vscode) is a good option to do that.

But you can also use the following command in terminal to replace `nodejs-ts-boilerplate` with `<new-project-name>`.


```bash
sed -i '' 's/nodejs-ts-boilerplate/<new-project-name>/g' *(.)
```

---

## Docker

Docker build,

```bash
docker build . -t nodejs-boilerplate:0.1.0
```

Docker run,

```bash
docker run -it --rm -p 3000:3000 nodejs-boilerplate:0.1.0
```

## Yarn Commands

### `yarn` or `yarn install`

Installs all the dependencies

### `yarn clean`

Deletes the generated `dist` folder.

### `yarn build`

Cleans the `dist` folder first and then generates all the files.

### `yarn build:w`

Starts with cleaning the dist folder. It watches for file changes and recompiles on the go.

### `yarn start`

Cleans, generates and then starts using `node dist/index.js` command

### `yarn start:dev`

Runs the program using `ts-node src`, ie, it does not require to generate all the `dist` files

### `yarn start:w`

Runs in watch mode using `nodemon`. Helpful for rapid development and testing.

### `yarn lint`

Checks esLinter using `google/gts` library.

### `yarn fmt`

Fixes linter errors using `google/gts` library.

### `yarn test`

It first cleans `dist`, generates `dist` as part of `pretest`, and then runs `test`.
After finishing running, it checks lint as `posttest`.

[github-image]: https://github.com/the-redback/nodejs-ts-boilerplate/actions/workflows/build.yaml/badge.svg
[docker-ci-image]: https://github.com/the-redback/nodejs-ts-boilerplate/actions/workflows/docker-build.yaml/badge.svg
[github-url]: https://github.com/the-redback/nodejs-ts-boilerplate/actions
<!-- [codecov-image]: https://codecov.io/gh/the-redback/nodejs-ts-boilerplate/branch/main/graph/badge.svg -->
<!-- [codecov-url]: https://codecov.io/gh/the-redback/nodejs-ts-boilerplate -->
[gts-image]: https://img.shields.io/badge/code%20style-google-blueviolet.svg
[gts-url]: https://github.com/google/gts
[snyk-image]: https://snyk.io/test/github/the-redback/nodejs-ts-boilerplate/badge.svg
[snyk-url]: https://snyk.io/test/github/the-redback/nodejs-ts-boilerplate
[license-image]: https://img.shields.io/github/license/the-redback/nodejs-ts-boilerplate
[code-size-image]: https://img.shields.io/github/languages/code-size/the-redback/nodejs-ts-boilerplate
