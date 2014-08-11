---
layout: integration 
title: "Capistrano"
draft: true
---

#### Install the BigPanda Ruby module
Simply run:

    gem install bigpanda

<!-- section-separator -->

#### Set BigPanda API Token
Open your main Capistrano file (located at `config/deploy.rb` or `Capfile`) and add these lines:

    require 'bigpanda/capistrano'
    set :bigpanda_access_token, $TOKEN

BigPanda will now be notified when you run `cap deploy`.
