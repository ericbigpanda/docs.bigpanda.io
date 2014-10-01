#!/bin/bash
npm i
gem install jekyll kramdown nokogiri
if [[ ! "$?" = "0" ]]; then
    sudo gem install jekyll kramdown nokogiri
fi
