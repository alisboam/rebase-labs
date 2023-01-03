#!/bin/sh

bash -c "rake db:create ; rake db:migrate ; ruby server.rb"
