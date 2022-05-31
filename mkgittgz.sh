#!/bin/sh

#projname="desmume"
projname=$1

parentdir=/cygdrive/f/git-$projname
gitdir=$projname

pushd $parentdir/$gitdir

commitdate=$(git log -1 --format="%at" | xargs -I{} date -d @{} +%Y-%m-%d)
echo $commitdate

n=7
commitnum=$(git log | head -1 | cut -f2 -d' ');commitnum=${commitnum:0:$n}
echo $commitnum

newgitdir=$gitdir-$commitdate-$commitnum

pushd $parentdir
cp -R $gitdir $newgitdir
tar zcf $newgitdir.tgz $newgitdir

popd
popd
