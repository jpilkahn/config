# Installation Instructions

## TL;DR

```sh
./install
```

## Prerequisites

### Bootstrapping `autotools`

Before attempting installation, [`autotools`][autotools] requires bootstrapping.
Run `./autogen` to generate an `m4` environment, a `configure` script from the
`configure.ac`, one or more `Makefile.in`s from respective corresponding
`Makefile.ac`s, and one or more `Makefile`s from the `Makefile.in`s.
  Bootstrapping must have happened once, directly after initial checkout.
Thereafter it should not need repeating.

## Basic Installation

The shell commands `./configure && make && make install` will configure, build,
and install this package. The `./install` script provides a single-command
convenience wrapper around the individual commands described the above.

## Installation Names

By default, `make install` installs the package's commands under
`/usr/local/bin`, include files under `/usr/local/include`, etc. You can specify
an installation prefix other than `/usr/local` by giving `configure` the option
`--prefix=PREFIX`, where `PREFIX` must be an absolute file name.

If you pass the option `--exec-prefix=PREFIX` to `configure`, the package uses
`PREFIX` as the prefix for installing programs and libraries. Documentation and
other data files still use the regular prefix.

If you use an unusual directory layout you can give options like `--bindir=DIR`
to specify different values for particular kinds of files. Run `configure
--help` for a list of the directories you can set and what kinds of files go in
them. In general, the defaults for these options are relative to `${prefix}`, so
that specifying `--prefix` alone will affect the other directory specifications
that were not explicitly provided.

You may provide a value for `DESTDIR` variable to set an alternate installation
base path. For example, `make install DESTDIR=/alternate/directory` will prepend
`/alternate/directory` before all installation names.

## `configure` Invocation

`configure` recognizes the following options to control how it operates:

`-h`, `--help`
  Print a summary of the options to `configure`, and exit.

`--help=recursive`, `--help=short`
  Print a summary of the options unique to this package's `configure`, and exit.
The `short` variant lists options used in the top level, while the `recursive`
variant lists options also present in any nested packages.

`-V`, `--version`
  Print the version of Autoconf used to generate the `configure` script, and exit.

`--cache-file=FILE`
  Enable the cache: use and save the results of the tests in FILE, traditionally
`config.cache`. FILE defaults to `/dev/null` to disable caching.

`-C`, `--config-cache`
  Alias for `--cache-file=config.cache`.

`-q`, `--quiet`, `--silent`
  Do not print messages naming the checks made. To suppress all normal
output, redirect it to `/dev/null` (error messages will be visible, regardless).

`--srcdir=DIR`
  Look for the package's source code in directory `DIR`. In most cases,
`configure` can determine that directory automatically.

`--prefix=DIR`
  Use `DIR` as the installation prefix. \*note Installation Names:: for more
details, including other options available for fine-tuning the installation
locations.

`-n`, `--no-create`
  Run the configure checks, but stop before creating any output files.

`configure` also accepts some other, not widely useful, options. Run `configure
--help` for more details.

<!-- refs -->

[autotools]: https://www.gnu.org/software/automake/manual/html_node/Autotools-Introduction.html
