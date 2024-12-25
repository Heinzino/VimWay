# 1. Package Manager
> *Brew is the best*

## Step 1: Download Homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Step 2: Add Homebrew to PATH
Use the ending commands after running the first step. It should look something like:
```bash
 echo >> /home/heinzino/.bashrc
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/heinzino/.bashrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```

## Step 3: Install Software 

```bash
brew install oh-my-posh tmux nvim
```






