#!/usr/bin/perl -w

use strict;
use warnings;
use Switch;

sub menu{
print "-------------------\n";
print "COLLEGE REGISTER\n";
print "-------------------\n";
print "1) STUDENTS \n";
print "2) COURSES \n";
print "3) SCORES \n";
print "4) AVERAGES\n";
print "5) SAVE REGISTERS TO .CSV \n \n";
print "0) EXIT\n";
}

sub default_menu()
{
print "1) New \n";
print "2) Edit \n";
print "3) Delete \n";
}

sub students()
{
default_menu();
print "4) Search By ID \n";
print "5) Search by Name \n";
print "0) Back to main Menu \n";

print":";
my $opt=<STDIN>;    

while($opt!=0){
switch($opt)
{
case 1
{print "New \n";}
case 2
{print "Edit \n";}
case 3
{print "Delete \n";}
case 4
{print "Search By Id \n";}
case 5
{print "Search by Name \n";}

else
{print "Incorrect Option \n";}
}

default_menu();
print "4) Search By ID \n";
print "5) Search by Name \n";
print "0) Back to main Menu \n";
print ":";
$opt=<STDIN>;
}
}

sub courses()
{
default_menu();
print "4) Search By ID \n";
print "5) Search by Name of Course\n";
print "6 List By Year \n";
print "0) Back to main Menu \n";

print ":";
my $opt=<STDIN>;

while($opt!=0)
{
switch($opt)
{
case 1
{print "New \n";}
case 2
{print "Edit \n";}
case 3
{print "Delete \n";}
case 4
{print "Search By Id \n";}
case 5
{print "Search by Name of Course \n";}
case 6
{print "List By Year \n";}
else
{print "Incorrect Option \n";}
}    

default_menu();
print "4) Search By ID \n";
print "5) Search by Name of Course\n";
print "6 List By Year \n";
print "0) Back to main Menu \n";

print ":";
$opt=<STDIN>;
}
}


sub scores()
{
default_menu();
print "4) List by student \n";
print "5) List by year \n";
print "6) List by Coruse \n";
print "0) Back to main menu \n";

print ":";
my $opt=<STDIN>; 

while($opt!=0)
{
switch($opt)
{
case 1{print"add \n";}
case 2{print"edit \n";}
case 3{print"delete \n";}
case 4{print"list by student \n";}
case 5{print"list by year \n";}
case 6{print"list by course \n";}
else{print"incorrect option \n";}
}

default_menu();
print "4) List by student \n";
print "5) List by year \n";
print "6) List by Course \n";
print "0) Back to main menu \n";
print ":";
$opt=<STDIN>; 
}
}


sub averages()
{
print "1) List by student \n";
print "2) List by year \n";
print "3) List by Course \n";
print "4) List by Semester \n";
print "0) Back to main menu \n";

print ":";
my $opt=<STDIN>; 

while($opt!=0)
{
switch($opt)
{
case 1{print"list by student \n";}
case 2{print"list by year \n";}
case 3{print"list by Course \n";}
case 3{print"list by semester \n";}
else{print"incorrect option \n";}
}

print "1) List by student \n";
print "2) List by year \n";
print "3) List by Course \n";
print "4) List by Semester \n";
print "0) Back to main menu \n";
print ":";
$opt=<STDIN>; 
}
}



sub main()
{
menu();
print ":";
my $opt=<STDIN>;


while($opt!=0)
{
menu();
switch($opt)
{

case 1
{
print "-------------------\n";
print "STUDENTS\n";
print "-------------------\n";
students();
}

case 2
{
print "-------------------\n";
print "COURSES\n";
print "-------------------\n";
courses();
}


case 3
{
print "-------------------\n";
print "SCORES\n";
print "-------------------\n";
scores();
}

case 4
{
print "-------------------\n";
print "AVERAGES\n";
print "-------------------\n";
averages();
}

case 5
{
printf "convert to .CSV \n";

}

else
{print "Incorrect Option \n";}
}

menu();
print ":";
$opt=<STDIN>
}
}

main();