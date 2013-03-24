#!/usr/bin/perl

#Checks the lib files for inconsitent/missing entries

#include the browsers file
do 'browsers.pm';

#check for items missing in HashIDLib - detect but no name
$checked = 0;
foreach (@BrowsersSearchIDOrder) {
 $test = $_;
 $checked += 1;
 if (!grep $_ eq $test, %BrowsersHashIDLib) {
   print "[$test] not found in BrowsersHashIDLib\n";
 }
}
print "Checked $checked in BrowsersHashIDLib\n";

#check for items missing in SearchID - name but no detect
$checked = 0;
while (($key, $value) = each(%BrowsersHashIDLib)) {
  $checked += 1;
  if ($key != "svn" and $key!= "firefox" and $key != "msie" and $key != "netscape") {
    if (!grep $_ eq $key, @BrowsersSearchIDOrder) {
      print "[$key] not found in BrowsersSearchIDOrder\n";
    }
  }
}
print "Checked $checked in BrowsersSearchIDOrder\n";

#include the OS file
do 'operating_systems.pm';

#check for items missing in HashIDLib - detect but no name
$checked = 0;
foreach (@OSSearchIDOrder) {
  $checked += 1;
  $test = $_;
  if (!grep $_ eq $test, %OSHashID) {
    print "[$test] not found in OSHashID\n";
  }
}
print "Checked $checked in OSHashID\n";

#check for items missing in SearchID - name but no detect
$checked = 0;
while (($key, $value) = each(%OSHashID)) {
  $checked += 1;
  if (!grep $_ eq $key, @OSSearchIDOrder) {
    print "[$key] not found in OSSearchIDOrder\n";
  }
}
print "Checked $checked in OSSearchIDOrder\n";

#include the robots file
do 'robots.pm';

#check for items missing in HashIDLib - detect but no name
$checked = 0;
foreach (@RobotsSearchIDOrder_list1) {
  $test = $_;
  $checked += 1;
  if (!grep $_ eq $test, %RobotsHashIDLib) {
    print "[$test] not found in RobotsHashIDLib (list1)\n";
  }
}
print "Checked $checked in RobotsHashIDLib (list 1)\n";

$checked = 0;
foreach (@RobotsSearchIDOrder_list2) {
  $test = $_;
  $checked += 1;
  if (!grep $_ eq $test, %RobotsHashIDLib) {
    print "[$test] not found in RobotsHashIDLib (list2)\n";
  }
}
print "Checked $checked in RobotsHashIDLib (list 2)\n";

$checked = 0;
foreach (@RobotsSearchIDOrder_listgen) {
  $test = $_;
  $checked += 1;
  if (!grep $_ eq $test, %RobotsHashIDLib) {
    print "[$test] not found in RobotsHashIDLib (listgen)\n";
  }
}
print "Checked $checked in RobotsHashIDLib (listgen)\n";

#check for items missing in SearchID - name but no detect
$checked = 0;
while (($key, $value) = each(%RobotsHashIDLib)) {
  $checked += 1;
  if ((!grep $_ eq $key, @RobotsSearchIDOrder_list1) and (!grep $_ eq $key, @RobotsSearchIDOrder_list2) and (!grep $_ eq $key, @RobotsSearchIDOrder_listgen) and $key != "unknown") {
    print "[$key] not found in RobotsSearchIDOrder_list*\n";
  }
}
print "Checked $checked in RobotsSearchIDOrder_list*\n";
