# bootstrap-elm-sass
Bootstrap for ELM / SASS projects.

## Objectives
* no external dependencies (no npm -g)
* ELM 0.18
* SASS
* elm-test
* hot reloading development server
* simple webpack configuration file
* separated examples

## Usage

To start the development server:

``̀ bash
npm i
npm run dev
```

Open [localhost:8080](http://localhost:8080).

Minimalist todos viewer example:
![example](https://github.com/gribouille/bootstrap-elm-sass/blob/master/screen.png)

To build a production in `dist` folder:
``̀ bash
$ npm i
$ npm run dist
```

To start the ELM REPL:
```bash
$ npm run repl
```

To run the test
```bash
$ npm run test
```

## References
* [elm-loader](https://github.com/elm-community/elm-webpack-loader)
* [elm-webpack-starter](https://github.com/elm-community/elm-webpack-starter)

## License

This project is licensed under [MIT](https://github.com/gribouille/bootstrap-elm-sass/blob/master/LICENSE).