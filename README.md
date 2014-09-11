# Tool to detect Anagrams

[![GitHub version](https://badge.fury.io/gh/rafaelescrich%2Fanagram-rd.svg)](http://badge.fury.io/gh/rafaelescrich%2Fanagram-rd)

![](https://dl.dropboxusercontent.com/u/3150365/anagram-rd.jpg)

[Teste online the App](http://anagram-rd.herokuapp.com/)

# Installation Git

First install [rbenv](https://github.com/sstephenson/rbenv)

then add the plugin [ruby-build](https://github.com/sstephenson/ruby-build)

Install ruby-1.9.3-p547
```
rbenv install 1.9.3-p547
```
Then set you local environment to this ruby version
```
rbenv local 1.9.3-p547
```
If everything is correct then we need to install bundle
```
gem install bundle
```
Now you have to clone this repo to your machine
```
git clone git@github.com:rafaelescrich/anagram-rd.git
cd anagram-rd
```
After the installation finishes with run bundle without the productions gems
```
bundle install --without production
```
At last but not at least we run the server locally to see our APP.
```
rails s
```

This gem works with Ubuntu 14.04 with Ruby 1.9.3-p547.

Any doubts or bugs, please report to rafaelescrich at gmail.com
