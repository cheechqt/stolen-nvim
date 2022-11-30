### i just stole dotfiles from [craftzdog](https://github.com/craftzdog/dotfiles-public) and kyemaps/some plugins from [AstroNvim](https://github.com/AstroNvim/AstroNvim)

#### [craftzdog's setup video](https://youtu.be/ajmK0ZNcM4Q)

##### list of global deps (not all are needed)

| ![npm deps](https://github.com/cheechqt/stolen-nvim/blob/main/npm-list.png "npm deps") | ![brew deps](https://github.com/cheechqt/stolen-nvim/blob/main/brew-list.png "brew deps") |
| -------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |

##### prettier.config.js example

```

const options = {
  arrowParents: "avoid",
  singleQuote: false,
  bracketSpacing: true,
  endOfLine: "lf",
  semi: true,
  tabWidth: 2,
  trailingComma: "none",
  // npm install -D prettier-plugin-tailwindcss
  plugins: [require("prettier-plugin-tailwindcss")],
  // npm install --save-dev @trivago/prettier-plugin-sort-imports
  importOrder: [
    "^react",
    "^polished",
    "^@mui/material",
    "^@mui/icons",
    "^components/(.*)$",
    `^(?!react|@mui|styles|components|${`.\/`}|polished)`,
    "^styles",
    "^[./]",
  ],
  importOrderSeparation: false,
  importOrderSortSpecifiers: false,
};

module.exports = options;


```
