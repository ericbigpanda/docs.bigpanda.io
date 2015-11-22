#!/bin/bash
npm i
gem install jekyll -v 2.5.3
if [[ ! "$?" = "0" ]]; then
    sudo gem install jekyll -v 2.5.3
    sudo gem install kramdown nokogiri
else 
    gem install kramdown nokogiri
fi
