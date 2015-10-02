/* scanner for a toy Pascal-like language */

%{
/* need this for the call to atof() below */
#include <stdio.h>
#include <stdlib.h>
%}

%option noyywrap

TAG     ([<][!]?[^>]*[>])*

%%

{TAG}        printf( "A HTML tag: %s\n", yytext );

"{"[^}\n]*"}"     /* eat up one-line comments */

[ \t\n]+	     /* eat up whitespace */

.	       printf("");

%%

int main( int argc, char **argv ) {
    FILE *fPtr;
    ++argv, --argc;  /* skip over program name */
    if (argc > 0) {
        fPtr = fopen(argv[0], "r");
        if (!fPtr) {
            printf("file open failed...\n");
            exit(1);
        }
        yyin = fPtr;
        yylex();

        fclose(fPtr);
    }
    else {
        char s[1024];
        printf("please type the filename:\n");
        scanf("%s", s);
        fPtr = fopen(s, "r");
        if (!fPtr) {
            printf("file open failed...\n");
            exit(1);
        }
        yyin = fPtr;
        yylex();
    }

}
