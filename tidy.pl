#!/usr/bin/perl

$dstDir = "content/blog";
opendir(DIR, $dstDir) || die "couldn't open dir: $!";
while($f = readdir(DIR)){
    next if($f=~/^\./);
    next unless($f=~/^[0-9]{4}\-[0-9]{2}-[0-9]{2}-(.*)$/);
    $name = $1;
    print "git mv $dstDir/$f $dstDir/$name\n";
    `git mv $dstDir/$f $dstDir/$name`;
}
