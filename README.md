# Config

**Config** is a basic checklist I follow to set up a new Mac's development environment. It gets me up to speed with Git, Ruby, GitHub, Jekyll, and more so I can more quickly get back to coding.

## Contents

| File | Description |
| --- | --- |
| `.bash_profile` | Customizes the Terminal.app prompt and echoes the currently checked out Git branch. |
| `.gitconfig` | Global Git configuration to specify my name and email, shortcuts, colors, and more. |
| `.gitignore` | The ignore file from [twbs/bootstrap](https://github.com/twbs/bootstrap) that I use everywhere. |

## Checklist

### 1. Prep OS X

- Download and install latest version of Xcode from the Mac App Store.
- Download and install Xcode Command Line Tools from <https://developer.apple.com/downloads/>.

**Be sure to open Xcode and agree to the terms of use.**

### 2. Prep Terminal.app

- Load [`.bash_profile`](/.bash_profile)
- Load [`.gitconfig`](/.gitconfig) contents into the global `~/.gitconfig`

### 3. Secure Git(Hub) access

- [Generate new SSH key](https://help.github.com/articles/generating-ssh-keys/)
- [Generate an access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) for Terminal to auth your GitHub account when 2FA is enabled.

### 4. GitHub dev setup

- Download the Strap setup script for GitHub's foundational development setup.
- Clone the `github/github` repository and run `script/bootstrap`.

### 5. Setup Ruby

- Install rbenv via Homebrew: `brew install rbenv`.
- Download a version of Ruby via rbenv (e.g., `rbenv install 2.2.5`). See <https://gorails.com/setup/osx/10.11-el-capitan>.
- Make it the global version of Ruby: `rbenv global 2.2.5`.

*Installing and managing Ruby with rbenv allows us to specify versions of Ruby on a per-project basis. It also means we can avoid running sudo commands for installing gems and more as it's not affecting OS X's system Ruby.*

*Having trouble with nokogiri? See <https://stackoverflow.com/a/41491487>.*

### 6. Additional dependencies

- Install node via Homebrew: `brew install node`.
- Install Sass, Jekyll, and Rouge: `gem install bundler sass jekyll rouge`.

### 7. Setup VSCode
- Download editor font from <https://www.typography.com/>
- Paste user settings from repo's file
- Paste css from repo's vscode css into a local file, link in user settings
- Enable `code` terminal commands: from VSCode, open the command palette and type *Shell command...*
- Install favorite extensions
  - Cobalt2 (theme)
  - live share
  - vscode icons
  - quokka
  - git blame
  - prettier
  - eslint
  - path intellisense
  - custom css and js loader
  - emmet
  - import cost

### 8. Customize things
- Set keyboard repetition speed in System Preferences to max for speedy code navigation :)
- Show hidden files with `defaults write com.apple.finder AppleShowAllFiles YES`
- Hide desktop icons with `defaults write com.apple.finder CreateDesktop false; killall Finder`

## Use it yourself

Fork this repo, or just copy-paste things you need, and make it your own. **Please be sure to change your `.gitconfig` name and email address though!**

## Works on my machine

Yup, it does. Hopefully it does on yours as well, but please don't hate me if it doesn't.

<3
