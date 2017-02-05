Somewhere to put the programming excercises I do with my children.

Some of these are simple command-line programs. We use processing.org
because it seems easier than bare Java for a beginner, though it does
show a useless "screen" window each time.

We put this in ~/bash_aliases to make it easier to just run the code:

processingRun() {
    $HOME/processing/processing-java --sketch=$1 --run
}
alias processing-run=processingRun

Then we can just do this, for instance:
$ processing-run print_numbers_in_grid
