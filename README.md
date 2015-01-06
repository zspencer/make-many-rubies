# Make Many Rubies

This repository illustrates using make, rbenv and wach to
auto-run tests across multiple ruby versions on file system
changes.

## Installation

This repository is an example only. You'll need to:

* [Copy-pasta](http://i2.kym-cdn.com/entries/icons/original/000/000/246/copypasta.jpg)
  the Makefile into your own project.
* Adapt the `test-%` target to how you run your tests.
* Change the Ruby versions at the top to your target Ruby
  versions.
* Update the `test` and `install` tasks to reference your
  target Ruby versions.

#### Prerequisites:

  * [make](https://www.gnu.org/software/make/manual/)
  * [rbenv](https://github.com/sstephenson/rbenv)
  * [node](http://nodejs.org)
  * [wach](https://github.com/quackingduck/wach)

##### Nice to haves:

  * [http://bash-completion.alioth.debian.org](bash-completion)
    - tab-completion for Makefiles.


## Usage
I tend to open splits in
[tmux](https://gist.github.com/MohamedAlaa/2961058#panes-splits)
or [iTerm](https://iterm2.com/documentation-one-page.html)
and run `make retest-<version>` with a different version in
each. If I were cool I'd hook up output to a notifier to see
it switch between red and green. However, I prefer visually
checking test output each time.

```
$ make install # Installs all the rubies listed at the top
               # of the makefile and the gems in the Gemfile
...
$ make test     # Serially runs tests in test/all.rb against
...             # all ruby versions.
$ make test -j4 # Parallely runs tests in test/all.rb
...             # against all ruby versions, 4 at a time
$ make retest-187 # Watches for file system changes and runs
...               # tests against ruby 1.8.7
$ make retest-20  # Watches for file system changes and runs
...               # tests against ruby 2.0
```

Go ahead! Make the test in `test/all.rb` pass while a retest task is running!

## Development

I'm not sure how to package this up as something to include in a project
Makefile. I may wind up doing it, but I'd need to poke at it. For now
[copy-pasta](http://i2.kym-cdn.com/entries/icons/original/000/000/246/copypasta.jpg)

Questions, bug reports, features requests and patches are more than welcome, so
long as you follow our [code of conduct](CODE_OF_CONDUCT.md) and [contribution
guidelines](CONTRIBUTING.md)
