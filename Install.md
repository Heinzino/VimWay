# 1. Package Manager
> *Brew is the best*

## Step 1: Download Homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Step 2: Add Homebrew to PATH
Use the ending commands after running the first step. It should look something like:
```bash
 echo >> ~/.bashrc
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```

## Step 3: Install Software 

```bash
brew install oh-my-posh tmux nvim lazygit
```

# 2. Oh-my-posh Setup

> Pretty terminal

## Step 1 : Nerd Font WSL Setup

- Go [download](https://www.nerdfonts.com/font-downloads) a nerd font . I use ZedMono.
- Unzip the file
- Ctrl + A (select all) then right click and select install
- Right click the top of the WSL terminal and select Properties
- Switch to the Font tab and select the font you downloaded

## Step 2: Terminal Theme

Add the following lines to the end of .bashrc file. I like the alias for the vim motions we set up later. Oh-my-posh has other themes as well.  

```bash
eval "$(oh-my-posh init bash --config ~/repo/VimWay/Terminal/gruvbox.omp.json)"
alias cl='clear'
```

Restart the terminal or `source ~/.bashrc` to see the changes.


# 3. Nvim Setup

## Step 0 : Install Requirements
```bash
sudo apt update
sudo apt install git make unzip gcc nodejs npm
brew install ripgrep
```

## Step 1: More Requirements
```bash
sudo apt install pipx
pipx ensurepath
pipx install pyright
```

On powershell. You can install scoop the windows packager manager [here](https://scoop.sh/)
```
scoop install win32yank
```

## Step 2: Move the Nvim config file

```bash
mkdir ~/.config
cp -r ./nvim ~/.config
```

## Step 3: Run Nvim
It should start installing the package
```bash
nvim
```

# 4. Tmux Setup

## Step 0: Installing Requirements
```bash
brew install fzf
```

## Step 1: Copying Configs
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp .tmux.conf ~/
cp tmux-sessionizer ~/.local/bin/
chmod +x ~/.local/bin/tmux-sessionizer
tmux source-file ~/.tmux.conf
```
## Step 2: Adjusting Configs

Add these two lines to .bashrc
```bash
export PATH="$HOME/.local/bin:$PATH"
bind '"\C-f":"tmux-sessionizer\n"'
```

Add 'hotkeys' to .tmux.conf for tmux sessionizer
```bash
bind-key -r C run-shell "~/.local/bin/tmux-sessionizer ~/repo/CP"
bind-key -r B run-shell "~/.local/bin/tmux-sessionizer ~/repo/Helios-B3-Board"
```

# 4. Java Setup
```bash
 cp runTest ~/.local/bin/
 source ~/.bashrc
 chmod +x ~/.local/bin/runTest
```
