%{
#include "parser.tab.h"
#include <stdio.h>

extern int yylineno;
%}

%%
"integer"           { return INTEGER; }
"fractional"        { return FRACTIONAL; }
"in"                { return IN; }
"out"               { return OUT; }
"if"                { return IF; }
"else if"           { return ELSEIF; }
"else"              { return ELSE; }

[0-9]+"."[0-9]+     { yylval.fval = atof(yytext); return FLOAT_LITERAL; }
[0-9]+              { yylval.ival = atoi(yytext); return INT_LITERAL; }
[a-zA-Z_][a-zA-Z0-9_]* { yylval.sval = strdup(yytext); return IDENTIFIER; }

"=="                { return EQ; }
"!="                { return NEQ; }
"<="                { return LEQ; }
">="                { return GEQ; }
"<"                 { return LT; }
">"                 { return GT; }

"="                 { return ASSIGN; }
";"                 { return SEMI; }
"("                 { return LPAREN; }
")"                 { return RPAREN; }
"{"                 { return LBRACE; }
"}"                 { return RBRACE; }
"+"                 { return PLUS; }
"-"                 { return MINUS; }
"*"                 { return MUL; }
"/"                 { return DIV; }

[ \t\r]+            ;
\n                  { yylineno++; }
.                   { return *yytext; }

%%

int yywrap() { return 1; }
