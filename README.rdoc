# Tool to detect Anagrams

[![Gem Version](https://badge.fury.io/rb/shopify_theme.svg)](http://badge.fury.io/rb/shopify_theme)


![Shopify theme gem](https://dl.dropboxusercontent.com/u/669627/terminalreadme.png)


# Requirements

This gem works with Ubuntu 14.04 with Ruby 1.9.3-p547, using [rbenv](https://github.com/sstephenson/rbenv)


# Installation

To install the shopify_theme gem use 'gem install' (you might have use 'sudo gem install')

```
gem install shopify_theme [optional_theme_id]
```

to update to the latest version

```
gem update shopify_theme
```

# Usage

Generate the config file. Go get a valid api_key and password for your store head to `https://[your store].myshopify.com/admin/apps/private` and generate a private application. By default it adds the main theme, if you want to edit one of your other themes, add the `theme_id`.

```
theme configure api_key password store_url
```

Example of config.yml. Notice store has no http or https declaration. You can
use `:whitelist_files:` to specify files for upload. The `assets/`, `config/`,
`layout/`, `snippets/`, `templates/` and `locales/`directories are included by
default.

You can also use `:ignore_files:` to exclude files from getting uploaded, for
example your `config/settings.html` or other configuration driven items

```yaml
---
:api_key: 7a8da86d3dd730b67a357dedabaac5d6
:password: 552338ce0d3aba7fc501dcf99bc57a81
:store: little-plastics.myshopify.com
:theme_id:
:whitelist_files:
- directoryToUpload/
- importantFile.txt
:ignore_files:
- config/settings.html
```

Download all the theme files

```
theme download
```

Upload a theme file

```
theme upload assets/layout.liquid
```

Remove a theme file

```
theme remove assets/layout.liquid
```

Completely replace shop theme assets with the local assets

```
theme replace
```

Watch the theme directory and upload any files as they change

```
theme watch
```

Open the store in the default browser

```
theme open
```

Bootstrap a new theme with [Timber](http://www.shopify.com/timber)

```

# Common Problems

## SSL Certificates won't verify on Windows



## How do I edit a theme that isn't my shops main theme?



## Where can I find my Theme Id?


![themes/THEME_ID/settings](doc/how_to_find_theme_id.png)