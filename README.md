# Setting up a new Mac

1. Download and install [iTerm 2](https://iterm2.com)

2. Install [Homebrew](https://brew.sh)
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

3. Install Zsh and Zsh completions
```
brew install zsh zsh-completions
```

4. Install [Oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

5. Set login shell to ZSH  
```
chsh -s $(which zsh)
```

6. Git clone .aliases file and link to .zshrc file through the shell_snippets file above.