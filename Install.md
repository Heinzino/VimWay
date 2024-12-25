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
brew install oh-my-posh tmux nvim
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






