#!/usr/bin/env sh

# Locale Environment
#
# @see Standard:
# - [IEEE Std 1003.1-2017 / POSIX, ch. 7, "Locales"]\
#   (https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap07.html)
# - [ISO TR 14652]\
#   (http://www.open-std.org/JTC1/SC22/WG20/docs/n972-14652ft.pdf)
#
# @see GNU implementation:
# - [glibc]\
#   (https://sourceware.org/glibc/wiki/Locales)
# - [gnu gettext]\
#   (https://gnu.org/software/gettext/manual/html_node/Locale-Environment-Variables.html)
#
#
# ````````````````````````````````````````````````````````````````````````{.sh}
# # available locales
# cat /etc/locale.gen | rg '^#?<2-letter-language-code>'
# ls -l /usr/share/locale | rg '[[:space:]]<2-letter-language-code>'
#
# # installed locales
# locale -a
# `````````````````````````````````````````````````````````````````````````````
#
#
# Notable locales not in default use:
# ---
# - `C` / `POSIX`  (relevant)
# - `en@piglatin`  (humorous)
# - `nds_DE.UTF-8` (cultural)

# Most basic locale parameter, lowest priority.
LANG="en_US.UTF-8" ; export LANG

# `LC_ALL` does *not* act as a fallback for undefined finer-grained options,
# as one might naively so expect. On the contrary, it is vital for it to be
# null / empty, as it would otherwise override more granular config.
# [ "$LC_ALL" = "" ] || unset LC_ALL

# Fbofw, what"s home is home.
LC_ADDRESS="de_DE.UTF-8" ; export LC_ADDRESS

# Character attributes: classification, transliteration, case conversion, etc.
LC_CTYPE="en_US.UTF-8" ; export LC_CTYPE

# Character or string collation rules (comparison elements).
#
# `en_US`: Copies `iso14651_t1`.
# (i.e. *does* what the rest of the world does!)
# @see [ISO/IEC 14651](http://www.open-std.org/jtc1/sc22/WG20/docs/14651.html)
LC_COLLATE="en_US.UTF-8" ; export LC_COLLATE

# Metric (`1`) or imperial (`2`).
#
# `de_DE`: Metric, as per the base `i18n` locale.
# (i.e. what the non-US part of the world does.)
LC_MEASUREMENT="de_DE.UTF-8" ; export LC_MEASUREMENT

# System responses (affirmative & negative).
LC_MESSAGES="en_US.UTF-8" ; export LC_MESSAGES

# Formatting of monetary numeric values.
#
# `en_IE.UTF-8`: en conventions, EUR as primary currency.
LC_MONETARY="en_IE.UTF-8" ; export LC_MONETARY

# Formats used when addressing a person.
LC_NAME="en_US.UTF-8" ; export LC_NAME

# Height & width of the most standard paper format.
#
# `de_DE`: A4, as per the base `i18n` locale.
# (i.e. what the non-US part of the world does.)
LC_PAPER="de_DE.UTF-8" ; export LC_PAPER

# Formatting non-monetary numeric values.
LC_NUMERIC="en_US.UTF-8" ; export LC_NUMERIC

# Formatting of phone numbers (domestic & intl).
LC_TELEPHONE="de_DE.UTF-8" ; export LC_TELEPHONE

# Formatting of time and date values.
#
# `en_GB`: English language names, without the nuisance of the leading month.
# (Why America? Seriously.)
LC_TIME="en_GB.UTF-8" ; export LC_TIME

# Priority-list, should primary language not be available.
# (For a particular application, that is.)
LANGUAGE="en_US.UTF-8:en.UTF-8:en" ; export LANGUAGE
