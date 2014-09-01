#!/bin/bash
npm i --dev
gem install jekyll kramdown nokogiri
if [[ ! "$?" = "0" ]]; then
    sudo install jekyll kramdown nokogiri
fi
