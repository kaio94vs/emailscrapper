/*
Kaio Vieira dos Santos
RA: 156072

*/

%{
#include <stdio.h>
%}

begin [a-zA-Z0-9_.-]+[^_. -]

end [a-zA-Z0-9_.-]*[a-zA-Z0-9]

rule {begin}[@]{end}

erro {begin}[@]{end}[-_]


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