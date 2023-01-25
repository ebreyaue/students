#!/usr/bin/perl -w
#crear un menu y llamar a funciones
#use Switch;
use 5.010;
use strict;
use autodie;
use warnings;


#-----------------MENU--------------------------
sub menu{
print "-------------------\n";
print "COLLEGE REGISTER\n";
print "-------------------\n";
print "1) STUDENTS \n";
print "2) ASIGNAMENTS \n";
print "3) SCORES \n";
print "4) AVERAGES\n";
print "5) SAVE REGISTERS TO .CSV \n \n";
print "0) EXIT\n";
}

sub default_options()
{
print "1) ADD\n";
print "2) LIST\n";
print "3) SEARCH \n";
print "4) EXIT\n";
}


sub menu_students()
{
print "\n---------------\nSTUDENTS\n\n";    

default_options();
print"Insert Option: ";
my $opt=<STDIN>;

while($opt!=0)
{

if( $opt == 1){print"hola";}
elsif( $opt == 2){print"hello";}
elsif( $opt == 3){print"alala";}
elsif( $opt == 4){print"hao";}
else {print "Option Incorrect\n";}


print "\n---------------\nSTUDENTS\n\n";    
default_options();
print"Insert Option: ";
$opt=<STDIN>;
}
}


sub menu_asignaments()
{
print "\n---------------\nASIGNAMENTS\n\n";    

default_options();
print"Insert Option: ";
my $opt=<STDIN>;

while($opt!=0)
{

if( $opt == 1){print"hola";}
elsif( $opt == 2){print"hello";}
elsif( $opt == 3){print"alala";}
elsif( $opt == 4){print"hao";}
else {print "Option Incorrect\n";}


print "\n---------------\nASIGNAMENTS\n\n";    
default_options();
print"Insert Option: ";
$opt=<STDIN>;
}
}








sub menu_scores()
{
print "\n---------------\nSCORES\n\n";    

default_options();
print"Insert Option: ";
my $opt=<STDIN>;

while($opt!=0)
{

if( $opt == 1){print"hola";}
elsif( $opt == 2){print"hello";}
elsif( $opt == 3){print"alala";}
elsif( $opt == 4){print"hao";}
else {print "Option Incorrect\n";}


print "\n---------------\nSCORES\n\n";    
default_options();
print"Insert Option: ";
$opt=<STDIN>;
}
}


sub menu_averages()
{
print "\n---------------\nAVERAGES\n\n";    
print "1) List By ASC \n";
print "2) List By DESC \n";
print "3) Search by ID \n";

print"Insert Option: ";
my $opt=<STDIN>;

while($opt!=0)
{

if( $opt == 1){print"ORDER BY ASC\n";}
elsif( $opt == 2){print" .. DESC \n";}
elsif( $opt == 3){print"SEARCH \n";}
else {print "Option Incorrect\n";}

print "\n---------------\nAVERAGES\n\n";    
print "1) List By ASC \n";
print "2) List By DESC \n";
print "3) Search by ID \n";


print"Insert Option: ";
$opt=<STDIN>;
}
}


sub main()
{
menu();
print "Insert Option:";
my $opt = <STDIN>;

while($opt!=0)
{
if( $opt == 1){menu_students();}
elsif( $opt == 2){menu_asignaments();}
elsif( $opt == 3){menu_scores();}
elsif( $opt == 4){menu_averages();}
else {print "Option Incorrect\n";}

menu();
print "Insert Option:";
$opt=<STDIN>;
}

}

#------------END MENU-------------

main();