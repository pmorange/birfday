#!/bin/bash

cd /birfday

if [ -z "${LANGUAGE}" ]
then
  echo "ERROR : env variable LANGUAGE has to be defined"
fi

pipenv run python3 ./runner.py --mode SEED --file /birfdayFiles/${DATES_FILE}
pipenv run python3 ./runner.py
