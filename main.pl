#!/usr/bin/perl

# Perl Academic Score System
# Create by Emmanuel D. Breyaue - Year 2023
# License M.I.T
# github: ebreyaue
# email: hello@emmanuelbreyaue.com


use strict;
use warnings;

my $average;
my $scores;
my $counter=0;
my $score=0;


# my @assignaments = (); #array asignament list

my @averages = (); #array averages
my @id_students = (); # array students

print "Legajo:";
my $id_student=<STDIN>;

#search id_student, if not found you must create a new user.

# while ($id_student !=0 || search_student($legajo)!=true)

while($id_student!=0){

#for size of the array assignaments.

print "Insert Score: ";
my $score = <STDIN>;

        while($score!=0)
        {
            while($score > 10 || $score < 0)  #conditional while, you must insert a number from 1 to 10 to continue.
            {
            print "Error, You must insert a value from 1 to 10: ";
            $score = <STDIN>;  
            }
$counter++;
$scores+=$score;
print "Insert Score: ";
$score = <STDIN>;
}

$average = $scores / $counter;
print "---------------------------------\n";
if($average > 7)
{
print "sobresaliente\n"; 
} 
elsif($average > 4 && $average < 7){
print "Aprobado\n";
}
else
{
print "Desaprobado\n";
}

print "Promedio: ".$average."\n";

#guardar el promedio y legajo en un array dinamico. 

unshift @averages, $average;
unshift @id_students, $id_student;

print "------------------------------------\n";
print "Legajo: ";
$id_student=<STDIN>;
}

#guardarlo en un .csv

#mostrar resultados 
for my $l (@id_students) 
{
print $l[0];
}

#for my $n (@averages)
#{
#print $n;    
#}

print "Have You a Nice Day :)";
