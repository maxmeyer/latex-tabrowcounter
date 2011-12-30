tabrowno (1) -- numbers for tabular/longtable rows
==================================================

## DESCRIPTION

This LaTeX package enables users to enumerate table rows, reference the row
with `\ref?` and `\pageref`. Thanks to the refcount package `\ref` returns the
number of the row within a table.

Today the package supports the following environments
* tabular
* longtable

## CAVEATS

You need to compile your LaTeX-document as often as you have rows in all your
tables. You need to place the `\usepackage{tabrowcounter}`-statement after the
`\usepackage{longtable}`-statement. Otherwise the pre-loading with the
etoolbox-package fails.

## EXAMPLE

You find an example in doc/tabrowcounter/tabrowcounter-example.tex .

## Copyright and License

(c) 2011-∞ , All rights reserved, maxmeyer

Please see LICENSE.md for licensing information.
