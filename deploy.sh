#!/bin/bash
 
cd /var/www/nomadcafe-sub && git pull
bundle exec rails assets:precompile RAILS_ENV=production