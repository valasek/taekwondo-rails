# Taekwondo [![Build Status](https://travis-ci.org/valasek/taekwondo.svg?branch=master)](https://travis-ci.org/valasek/taekwondo) [![Code Climate](https://codeclimate.com/github/valasek/taekwondo/badges/gpa.svg)](https://codeclimate.com/github/valasek/taekwondo) [![Test Coverage](https://codeclimate.com/github/valasek/taekwondo/badges/coverage.svg)](https://codeclimate.com/github/valasek/taekwondo/coverage)

Manage Taekwondo teams, competitors and competitions. Web based portal allows you to register competitor to particular competition.

## License

All source code in the [Taekwondo](https://github.com/valasek/taekwondo) is available under the GNU GPL v3 License. See [LICENSE.md](LICENSE.md) for details.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ cd ~/tmp
$ git clone https://github.com/valasek/taekwondo
$ cd taekwondo
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```
