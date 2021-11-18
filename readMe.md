## Installing

`bundle install`

## Setting up the environment

Each environment has a configuration file with specific settings for that environment to run the tests.
The files are in the `config` folder

Development environment: dev.yml
Approval environment: hmg.yml

A file was created for a fictitious homologation environment

## Running the tests

`cucumber`

To modify the environment where the tests will run, just set the environment variable ENV_TYPE to the value corresponding to the environment:

`cucumber ENV_TYPE = dev` runs in the development environment
`cucumber ENV_TYPE = hmg` runs in the homologation environment

By *default* if no environment for past tests will run in *dev* environment.

If you want to run the tests using the browser in headless mode, just use the parameter `BROWSER = headless` when running the tests
