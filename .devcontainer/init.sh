# #!/bin/sh

echo Running script ./.devcontainer/init.sh

# You want to keep this shell script as short as possible, adding the unavoidable
# only. If you can move something to a script your target language, e.g. TypeScript
# then it is better to have an "init" script in the package.json file. [Manfred, 21 Aug 2023]

################################################################################
# Set get pull mode to rebase. Do the same for branches that may exist. However
# this is a repo designed for trunk-based development, so there shouldn't be any
# branches other than 'main' [Manfred, 22aug2022]
# For more details, see https://stackoverflow.com/a/13974638/411428
runuser -l node -c 'cd /work && git config pull.rebase true'
runuser -l node -c 'cd /work && git config branch.autosetuprebase always'
# option -l specifies the user on whose behalf the commmand is executed. Note that
#           this script runs as root. [Manfred, 12 Feb 2023]

echo Script ./.devcontainer/init.sh finished
