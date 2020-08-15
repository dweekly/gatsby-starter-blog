#!/usr/bin/perl

$srcDir = "/Users/davidweekly/dev/dwo/content/posts/";
$dstDir = "content/blog";
opendir(DIR, $srcDir) || die "couldn't open source post dir: $!";
while($f = readdir(DIR)){
    next if($f=~/^\./);
    my ($base) = $f =~ /^(.*)\.md$/;
    next if(-e "$dstDir/$base/index.md");
    `mkdir -p $dstDir/$base`;
    `cp $srcDir$f $dstDir/$base/index.md`;
    die($base);
}
