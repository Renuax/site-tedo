# WordPress theme starter project

Require stack: Node.js, Nginx/Apache, MySQL, PHP, wp-cli

## Set your theme name:

1. Rename theme directory `./src/indevlab` to `./src/<your-theme-name>`
1. In `./src/<your-theme-name>/style.css` at line 2: `Theme Name: <your-theme-name>`
1. In `package.json` at line 2 set `name` property as `<your-theme-name>`, at line 18 `./src/<your-theme-name>` and `wp theme activate <your-theme-name>`
1. In `./src/app.js` each import path passing through theme directory (`import './<your-theme-name>/assets/sass/main.sass';`)
1. In `./wp-cli.local.yml`:
    - `url: http://<your-theme-name>.local`
    - `core install: url: <your-theme-name>.local`

> Note: *Setting up the same name in the places described above gives you a possibility of some shorthands in config files. Follow these steps.*

## MySQL configuration

In `./wp-cli.local.yml` change your MySQL `dbname`, `dbuser` and `dbpass` (if necessary) since WordPress installer needs access to create a database.


## Installation:

    npm install
    npm run install:new

The root directory of a new WordPress installation now is `./dist`.

## Runing dev-server:

To start developing your theme in a local environment - configure a web-server: 

- `server_name` must be `<your-theme-name>.local`
- `root` - full path to wordpress installation (`./dist`)

Now, you can run development server by proxying `http://<your-theme-name>.local`

    npm run launch

Open `http://localhost:3000` in browser.