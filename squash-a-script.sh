#!/usr/bin/env bash

mkdir -p _extensions/carpentries/javascripts
vend=source/javascripts/vendor
cust=source/javascripts/custom

node_modules/.bin/uglifyjs ${vend}/jquery/jquery.js \
  ${vend}/bootstrap/bootstrap.bundle.min.js \
  ${vend}/jquery-visible/jquery.visible.js \
  ${vend}/feather-icons/feather.js \
  ${cust}/menu.js \
  --compress \
  --output _extensions/carpentries/javascripts/scripts.js

node_modules/.bin/uglifyjs ${cust}/themetoggle.js \
  --compress \
  --output _extensions/carpentries/javascripts/themetoggle.js
