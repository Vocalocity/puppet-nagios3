#!/bin/bash
set -e

for i in $(find . -iname '*.pp') ; do
  echo "validating $i"  
  puppet parser validate --render-as s --modulepath=modules $i
done

echo "Running lint"
# Style guide allows up to 140 characters.
puppet-lint --no-class_inherits_from_params_class-check manifests --no-80chars-check

#Template checks
for i in $(find . -iname '*.erb') ; do
  echo -n "${i}: "
  erb -P -x -T '-' $i | ruby -c || exit $?
done
