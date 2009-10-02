#!/usr/bin/perl

#include the browsers file
do 'browsers.pm';

#check for items missing in HashIDLib - detect but no name
foreach (@BrowsersSearchIDOrder) {
 $test = $_;
 if (!grep $_ eq $test, %BrowsersHashIDLib) {
   print "[$test] not found in BrowsersHashIDLib\n";
 }
}

#check for items missing in SearchID - name but no detect
while (($key, $value) = each(%BrowsersHashIDLib)) {
 if ($key != "svn" and $key!= "firefox" and $key != "msie" and $key != "netscape") {
  if (!grep $_ eq $key, @BrowsersSearchIDOrder) {
    print "[$key] not found in BrowsersSearchIDOrder\n";
  }
 }
}
