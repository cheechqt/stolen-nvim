### i just stole dotfiles from [craftzdog](https://github.com/craftzdog/dotfiles-public) and kyemaps/some plugins from [AstroNvim](https://github.com/AstroNvim/AstroNvim)

#### [craftzdog's setup video](https://youtu.be/ajmK0ZNcM4Q)

##### list of global deps (not all are needed)

| ![npm deps](https://github.com/cheechqt/stolen-nvim/blob/main/npm-list.png "npm deps") | ![brew deps](https://github.com/cheechqt/stolen-nvim/blob/main/brew-list.png "brew deps") |
| -------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |

##### prettier.config.js example

```
const options = {
  arrowParens: "avoid",
  singleQuote: true,
  bracketSpacing: true,
  endOfLine: "lf",
  semi: false,
  tabWidth: 2,
  trailingComma: "none",
};

module.exports = options;

```
