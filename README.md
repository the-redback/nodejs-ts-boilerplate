# nodejs-typescript-boilerplate
Boilerplate project for nodejs typescript

## `yarn` or `yarn install`

Installs all the dependencies

## `yarn clean`

Deletes the generated `dist` folder.

## `yarn build`

Cleans the `dist` folder first and then generates all the files.

## `yarn start`

Cleans, generates and then starts using `node dist/index.js` command

## `yarn start:dev`

Runs the program using `ts-node src`, ie, it does not require to generate all the `dist` files

## `yarn start:w`

Runs in watch mode using `nodemon`. Helpful for rapid development and testing.

## `yarn lint`

Checks esLinter using `google/gts` library.

## `yarn fmt`

Fixes linter errors using `google/gts` library.

## `yarn test`

It first cleans `dist`, generates `dist` as part of `pretest`, and then runs `test`.
After finishing running, it checks lint as `posttest`.
