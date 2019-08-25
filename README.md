# vfa-workshop-watir(http://watir.com)
<img src="https://raw.githubusercontent.com/watir/watir_logo/master/Logo/Watir_logo.png" width="300" height="150"/>

### 1. Goal:
- Understand testing with Watir tool.
- How to use Watir on multi platform.
### 2. Precondition:
- Ruby installed.
### 3. Env và IDE:
- Win/Mac/Linux are OK.
- [Visual Studio Code](https://code.visualstudio.com/)



## Installation ruby and watir

```
brew install rbenv // install rbenv
rbenv install -l //list of ruby version can install
rbenv install -v 2.6.3 // install ruby version 2.6.3
rbenv versions  // list all ruby versions installed
rbenv global 2.6.3 // set ruby version for this computer
//ruby 2.6.3 (2015-08-18 revivion 51636)


echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >>~/.bash_profile
echo eval "$(rbenv init -)" >>~/.bash_profile
source ~/.bash_profile

ruby -v

gem install watir //install watir
```

