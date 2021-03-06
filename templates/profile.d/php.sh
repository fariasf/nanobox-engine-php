#!/bin/bash

if [[ "$APP_NAME" = "dev" ]]; then
  cp {{etc_dir}}/php/dev_php.ini {{etc_dir}}/php/php.ini
  ln -sTf {{etc_dir}}/php.dev.d {{etc_dir}}/php.d
else
  cp {{etc_dir}}/php/prod_php.ini {{etc_dir}}/php/php.ini
  ln -sTf {{etc_dir}}/php.prod.d {{etc_dir}}/php.d
fi
