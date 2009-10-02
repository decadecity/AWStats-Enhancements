#!/usr/bin/perl

#Checks the lib files for inconsitent/missing entries

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

#include the OS file
do 'operating_systems.pm';

#check for items missing in HashIDLib - detect but no name
foreach (@OSSearchIDOrder) {
 $test = $_;
 if (!grep $_ eq $test, %OSHashID) {
   print "[$test] not found in OSHashID\n";
 }
}

#check for items missing in SearchID - name but no detect
while (($key, $value) = each(%OSHashID)) {
  if (!grep $_ eq $key, @OSSearchIDOrder) {
    print "[$key] not found in OSSearchIDOrder\n";
  }
}

#include the robots file
do 'robots.pm';

#check for items missing in HashIDLib - detect but no name
foreach (@RobotsSearchIDOrder_list1) {
 $test = $_;
 if (!grep $_ eq $test, %RobotsHashIDLib) {
   print "[$test] not found in RobotsHashIDLib\n";
 }
}

#check for items missing in SearchID - name but no detect
while (($key, $value) = each(%RobotsHashIDLib)) {
  if ((!grep $_ eq $key, @RobotsSearchIDOrder_list1) and (!grep $_ eq $key, @RobotsSearchIDOrder_list2) and (!grep $_ eq $key, @RobotsSearchIDOrder_listgen) and $key != "unknown") {
    print "[$key] not found in RobotsSearchIDOrder_list*\n";
  }
}
