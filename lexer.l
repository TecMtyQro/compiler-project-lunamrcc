%option noyywrap

%{
	#include <iostream>
	#include <fstream>
	// #include "parser.h"

	#pragma warning (disable: 4005)

	using namespace std;
	
%}

	/* Regular Expressions Section */

	/* Reserved Words */

DIM					"Dim"
SUB					"Sub"
FUNCTION			"Function"
END					"End"
AS					"As"
PUBLIC				"Public"
PRIVATE				"Private"
NOT					"Not"
CONST				"Const"
TRUE				"True"
FALSE				"False"
RETURN				"Return"

	/* Loop And Conditionals */

FOR					"For"
EACH				"Each"
IN					"In"
NEXT				"Next"
EXIT				"Exit"
TO					"To"
STEP				"Step"

DO					"Do"
WHILE				"While"
LOOP				"Loop"
UNTIL				"Until"

IF					"If"
THEN				"Then"
ELSE				"Else"
ELSEIF				"ElseIf"

	/* Data Types */

INTEGER				"Integer"
DOUBLE				"Double"
FLOAT				"Float"
BOOLEAN				"Boolean"
STRING				"String"

	/* Operators */

PLUS				"+"
MINUS				"-"
MULT				"*"
DIV					"/"
EXPONENT			"^"
MOD					"Mod"
MORETHAN			">"
LESSTHAN			"<"
MOREEQUAL			">="
LESSEQUAL			"<="
ANDOPR				"And"
OROPR				"Or"
XOROPR				"Xor"
PAROPEN				"("
PARCLOSE			")"
BRACOPEN			"["
BRACCLOSE			"]"
EQUALOPR			"="
COMMA				","
TEXTCONT			"_"
DOT					"."

	/* Visual Basic Classes */

CONSOLE				"Console"
WRITELINE			"WriteLine"

OPEN				"Open"
CLOSE				"Close"
INPUT				"Input"
EOF					"EOF"

COMMENT				([']([a-zA-Z]|[0-9]|[ ]|[.;,?'!"#$%&])*)

ID					(([a-zA-Z]([a-zA-Z]|[0-9])*))
STRINGVAL			(["][a-zA-Z]([a-zA-Z]|[0-9]|[ ])*["])
FLOATVAL			([-]*([0-9]*\.[0-9]+))
INTVAL				([-]*[0-9]+)


%%
	/* Token Section */

{DIM}				{ cout << "\n<" << yytext << ", DIM>"; }
{SUB}				{ cout << "\n<" << yytext << ", SUB>"; }
{FUNCTION}			{ cout << "\n<" << yytext << ", FUNCTION>"; }
{END}				{ cout << "\n<" << yytext << ", END>"; }
{AS}				{ cout << "\n<" << yytext << ", AS>"; }
{PUBLIC}			{ cout << "\n<" << yytext << ", PUBLIC>"; }
{PRIVATE}			{ cout << "\n<" << yytext << ", PRIVATE>"; }
{NOT}				{ cout << "\n<" << yytext << ", NOT>"; }
{CONST}				{ cout << "\n<" << yytext << ", CONST>"; }
{TRUE}				{ cout << "\n<" << yytext << ", TRUE>"; }
{FALSE}				{ cout << "\n<" << yytext << ", FALSE>"; }
{RETURN}			{ cout << "\n<" << yytext << ", RETURN>"; }

{FOR}				{ cout << "\n<" << yytext << ", FOR>"; }
{EACH}				{ cout << "\n<" << yytext << ", EACH>"; }
{IN}				{ cout << "\n<" << yytext << ", IN>"; }
{NEXT}				{ cout << "\n<" << yytext << ", NEXT>"; }
{EXIT}				{ cout << "\n<" << yytext << ", EXIT>"; }
{TO}				{ cout << "\n<" << yytext << ", TO>"; }
{STEP}				{ cout << "\n<" << yytext << ", STEP>"; }

{DO}				{ cout << "\n<" << yytext << ", DO>"; }
{WHILE}				{ cout << "\n<" << yytext << ", WHILE>"; }
{LOOP}				{ cout << "\n<" << yytext << ", LOOP>"; }
{UNTIL}				{ cout << "\n<" << yytext << ", UNTIL>"; }

{IF}				{ cout << "\n<" << yytext << ", IF>"; }
{THEN}				{ cout << "\n<" << yytext << ", THEN>"; }
{ELSE}				{ cout << "\n<" << yytext << ", ELSE>"; }
{ELSEIF}			{ cout << "\n<" << yytext << ", ELSEIF>"; }

{INTEGER}			{ cout << "\n<" << yytext << ", INTEGER>"; }
{DOUBLE}			{ cout << "\n<" << yytext << ", DOUBLE>"; }
{FLOAT}				{ cout << "\n<" << yytext << ", FLOAT>"; }
{BOOLEAN}			{ cout << "\n<" << yytext << ", BOOLEAN>"; }
{STRING}			{ cout << "\n<" << yytext << ", STRING>"; }

{PLUS}				{ cout << "\n<" << yytext << ", PLUS>"; }
{MINUS}				{ cout << "\n<" << yytext << ", MINUS>"; }
{MULT}				{ cout << "\n<" << yytext << ", MULT>"; }
{DIV}				{ cout << "\n<" << yytext << ", DIV>"; }
{EXPONENT}			{ cout << "\n<" << yytext << ", EXPONENT>"; }
{MOD}				{ cout << "\n<" << yytext << ", MOD>"; }
{MORETHAN}			{ cout << "\n<" << yytext << ", MORETHAN>"; }
{LESSTHAN}			{ cout << "\n<" << yytext << ", LESSTHAN>"; }
{MOREEQUAL}			{ cout << "\n<" << yytext << ", MOREEQUAL>"; }
{LESSEQUAL}			{ cout << "\n<" << yytext << ", LESSEQUAL>"; }
{ANDOPR}			{ cout << "\n<" << yytext << ", ANDOPR>"; }
{OROPR}				{ cout << "\n<" << yytext << ", OROPR>"; }
{XOROPR}			{ cout << "\n<" << yytext << ", XOROPR>"; }
{PAROPEN}			{ cout << "\n<" << yytext << ", PAROPEN>"; }
{PARCLOSE}			{ cout << "\n<" << yytext << ", PARCLOSE>"; }
{BRACOPEN}			{ cout << "\n<" << yytext << ", BRACOPEN>"; }
{BRACCLOSE}			{ cout << "\n<" << yytext << ", BRACCLOSE>"; }
{EQUALOPR}			{ cout << "\n<" << yytext << ", EQUALOPR>"; }
{COMMA}				{ cout << "\n<" << yytext << ", COMMA>"; }
{TEXTCONT}			{ cout << "\n<" << yytext << ", TEXTCONT>"; }
{DOT}				{ cout << "\n<" << yytext << ", DOT>"; }

{CONSOLE}			{ cout << "\n<" << yytext << ", CONSOLE>"; }
{WRITELINE}			{ cout << "\n<" << yytext << ", WRITELINE>"; }

{OPEN}				{ cout << "\n<" << yytext << ", OPEN>"; }
{CLOSE}				{ cout << "\n<" << yytext << ", CLOSE>"; }
{INPUT}				{ cout << "\n<" << yytext << ", INPUT>"; }
{EOF}				{ cout << "\n<" << yytext << ", EOF>"; }

{ID}				{ cout << "\n<" << yytext << ", ID>"; }
{FLOATVAL}			{ cout << "\n<" << yytext << ", FLOATVAL>"; }
{STRINGVAL}			{ cout << "\n<" << yytext << ", STRINGVAL>"; }
{INTVAL}			{ cout << "\n<" << yytext << ", INTVAL>"; }

{COMMENT}
[ \t]+				/* eat up whitespace */
.				

%%

int main() 
{    
	if(!(yyin = fopen("Test_Input.txt", "r")))
	{      
		return (0);
	}

  yylex();  
}
