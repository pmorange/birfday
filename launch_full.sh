#!/bin/bash

cd /birfday

if [[ -z "${LANGUAGE}" ]]
  echo "ERROR : env variable LANGUAGE has to be defined"
fi

pipenv run python3 ./runner.py --mode SEED --file /birfdayFiles/dates${LANGUAGE}.csv
pipenv run python3 ./runner.py

