# birfday (like my 5-year-old nephew says it)

Get reminders to send friends/family birthday texts (video tutorial [here](https://youtu.be/KRn2xb1bxXM)).

Forked from https://github.com/automagictv/birfday.git

## Setup

This uses `pipenv` to manage the virtual env and all dependencies. If you don't have pipenv install it [here](https://pypi.org/project/pipenv/) then:

```
git clone https://github.com/pmorange/birfday.git
cd birfday
pipenv install --skip-lock
```

For this to work, we need Birthday data in our database. If this is the first time you're running this application, start by seeding the data. Instructions on how to do this are below.

### Adding Birthdays

You'll need a csv containing the following fields with a `,` delimiter:

```
first_name
last_name
year [OPTIONAL]
month
day
note [OPTIONAL]
dt_updated [OPTIONAL]
```

For example:

```
first_name,last_name,year,month,day
Test,Birthday,1979,5,15
Test,Birthday1,,10,23
```

Once you have this file you can run the app in SEED mode:

```
pipenv run birfday/runner.py --mode SEED --file "/path/to/file.csv"
```

## Running the App

To execute in RUN mode:

```
pipenv run birfday/runner.py
```

You can run this on the cron by doing something like this:

```
# Run at 12:05 AM every day
5 0 * * * cd /path/to/birfday && pipenv run birfday/runner.py >> /path/to/cronlog.txt 2>&1
```

## Config

This uses the `config.py` file to set certain constants

