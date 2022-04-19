#!/bin/bash

cd /birfday

if [ -z "${DATES_FILE}" ]
then
  echo "ERROR : env variable DATES_FILE has to be defined"
fi

pipenv run python3 ./runner.py --mode SEED --file /birfdayFiles/${DATES_FILE}
pipenv run python3 ./runner.py
