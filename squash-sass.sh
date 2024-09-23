#!/usr/bin/env bash

mkdir -p _extensions/carpentries/{fonts,images,stylesheets}
cp -r source/fonts/* _extensions/carpentries/fonts/
cp -r source/images/* _extensions/carpentries/images/

node_modules/.bin/sass -s compressed \
  source/stylesheets/styles.css.scss \
  _extensions/carpentries/stylesheets/styles.css
