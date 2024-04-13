/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_PARSER_TAB_H_INCLUDED
# define YY_YY_PARSER_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    IDENT = 258,                   /* IDENT  */
    NUMBER = 259,                  /* NUMBER  */
    LPAR = 260,                    /* LPAR  */
    RPAR = 261,                    /* RPAR  */
    LCURLY = 262,                  /* LCURLY  */
    RCURLY = 263,                  /* RCURLY  */
    COMMA = 264,                   /* COMMA  */
    DOT = 265,                     /* DOT  */
    SEMICOLON = 266,               /* SEMICOLON  */
    VAR = 267,                     /* VAR  */
    PROCEDURE = 268,               /* PROCEDURE  */
    CALL = 269,                    /* CALL  */
    CONST = 270,                   /* CONST  */
    START = 271,                   /* START  */
    FINISH = 272,                  /* FINISH  */
    IF = 273,                      /* IF  */
    WHILE = 274,                   /* WHILE  */
    FOR = 275,                     /* FOR  */
    BREAK = 276,                   /* BREAK  */
    RETURN = 277,                  /* RETURN  */
    READ = 278,                    /* READ  */
    WRITE = 279,                   /* WRITE  */
    WRITELINE = 280,               /* WRITELINE  */
    ODD = 281,                     /* ODD  */
    EQ = 282,                      /* EQ  */
    NE = 283,                      /* NE  */
    LT = 284,                      /* LT  */
    GT = 285,                      /* GT  */
    LE = 286,                      /* LE  */
    GE = 287,                      /* GE  */
    ASSIGN = 288,                  /* ASSIGN  */
    ADD = 289,                     /* ADD  */
    SUB = 290,                     /* SUB  */
    MOD = 291,                     /* MOD  */
    MUL = 292,                     /* MUL  */
    DIV = 293,                     /* DIV  */
    THEN = 294,                    /* THEN  */
    DO = 295,                      /* DO  */
    TO = 296                       /* TO  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 16 "parser.y"


    char *sval;

    int ival;

#line 112 "parser.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_PARSER_TAB_H_INCLUDED  */
