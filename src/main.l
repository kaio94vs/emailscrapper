/*
Kaio Vieira dos Santos
RA: 156072

*/

%{
#include <stdio.h>
%}

end [a-zA-Z0-9_.-]+[^_. -]

begin [a-zA-Z0-9_.-]*[a-zA-Z0-9]

rule {end}[@]{begin}

erro {end}[@]{begin}[-_]


%%


{rule}   { printf("%s\n", yytext);}

{erro} ;
. ;
\n ;

%%


int main() {
  yylex();
  return 0;
}