" Vim syntax file
" Language:	SQL, PL/SQL (Oracle 8i)
" Maintainer:	Paul Moore <pf_moore AT yahoo.co.uk>
" Last Change:	2005 Dec 23

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

" The SQL reserved words, defined as keywords.

syn keyword sqlSpecial  false null true

syn keyword sqlKeyword	access add as asc begin by check cluster column
syn keyword sqlKeyword	compress connect current cursor default desc
syn keyword sqlKeyword	else elsif end exception exclusive file for 
syn keyword sqlKeyword	function group having identified if immediate increment
syn keyword sqlKeyword	index initial into is level loop maxextents mode modify
syn keyword sqlKeyword	nocompress nowait of offline on online start
syn keyword sqlKeyword	successful synonym table then to trigger uid
syn keyword sqlKeyword	unique user validate values view whenever
syn keyword sqlKeyword	option pctfree privileges procedure
syn keyword sqlKeyword	public resource return row rowlabel rownum rows
syn keyword sqlKeyword	session share size smallint type using

syn keyword plsqlKeyword AGENT AND ANY ARRAY ASSIGN AS AT AUTHID BEGIN BODY BY
syn keyword plsqlKeyword BULK C CASE CHAR_BASE CHARSETFORM CHARSETID CLOSE
syn keyword plsqlKeyword COLLECT CONSTANT CONSTRUCTOR CONTEXT CURRVAL DECLARE
syn keyword plsqlKeyword DVOID EXCEPTION EXCEPTION_INIT EXECUTE EXIT FETCH
syn keyword plsqlKeyword FINAL FUNCTION GOTO HASH IMMEDIATE IN INDICATOR
syn keyword plsqlKeyword INSTANTIABLE IS JAVA LANGUAGE LIBRARY MAP MAXLEN
syn keyword plsqlKeyword MEMBER NAME NEW NOCOPY NUMBER_BASE OBJECT OCICOLL
syn keyword plsqlKeyword OCIDATE OCIDATETIME OCILOBLOCATOR OCINUMBER OCIRAW
syn keyword plsqlKeyword OCISTRING OF OPAQUE OPEN OR ORDER OTHERS OUT
syn keyword plsqlKeyword OVERRIDING PACKAGE PARALLEL_ENABLE PARAMETERS
syn keyword plsqlKeyword PARTITION PIPELINED PRAGMA PROCEDURE RAISE RANGE REF
syn keyword plsqlKeyword RESULT RETURN REVERSE ROWTYPE SB1 SELF SHORT SIZE_T
syn keyword plsqlKeyword SQL SQLCODE SQLERRM STATIC STRUCT SUBTYPE TDO THEN
syn keyword plsqlKeyword TABLE TIMEZONE_ABBR TIMEZONE_HOUR TIMEZONE_MINUTE
syn keyword plsqlKeyword TIMEZONE_REGION TYPE UNDER UNSIGNED USING VARIANCE
syn keyword plsqlKeyword VARRAY VARYING WHEN WRITE

syn keyword sqlKeyword  case when global temporary 

syn keyword sqlStatement from group by as having declare with where order

syn keyword sqlOperator	not and or
syn keyword sqlOperator	in any some all between exists
syn keyword sqlOperator	like escape
syn keyword sqlOperator union intersect minus
syn keyword sqlOperator prior distinct
syn keyword sqlOperator	sysdate out
syn match   sqlOperator "\(+\|-\|\*\|/\|=\|<\|>\|@\|\*\*\|!=\|\~=\)"
syn match   sqlOperator "\(^=\|<=\|>=\|:=\|=>\|\.\.\|||\|<<\|>>\|\"\)"

syn keyword sqlStatement alter analyze audit comment commit create 
syn keyword sqlStatement delete drop execute explain grant insert lock noaudit
syn keyword sqlStatement rename revoke rollback savepoint select set
syn keyword sqlStatement truncate update

" PL/SQL functions.
syn keyword plsqlFunction ABS ACOS ADD_MONTHS ASCII ASCIISTR ASIN ATAN ATAN2
syn keyword plsqlFunction BFILENAME BITAND CEIL CHARTOROWID CHR COALESCE
syn keyword plsqlFunction COMMIT COMMIT_CM COMPOSE CONCAT  CONVERT  COS COSH
syn keyword plsqlFunction COUNT CUBE CURRENT_DATE CURRENT_TIME CURRENT_TIMESTAMP
syn keyword plsqlFunction DBTIMEZONE DECODE DECOMPOSE DEREF DUMP EMPTY_BLOB
syn keyword plsqlFunction EMPTY_CLOB EXISTS EXP FLOOR FROM_TZ GETBND GLB
syn keyword plsqlFunction GREATEST GREATEST_LB GROUPING HEXTORAW  INITCAP
syn keyword plsqlFunction INSTR INSTR2 INSTR4 INSTRB INSTRC ISNCHAR LAST_DAY
syn keyword plsqlFunction LEAST LEAST_UB LENGTH LENGTH2 LENGTH4 LENGTHB LENGTHC
syn keyword plsqlFunction LN LOCALTIME LOCALTIMESTAMP LOG LOWER LPAD
syn keyword plsqlFunction LTRIM LUB MAKE_REF MAX MIN MOD MONTHS_BETWEEN
syn keyword plsqlFunction NCHARTOROWID NCHR NEW_TIME NEXT_DAY NHEXTORAW
syn keyword plsqlFunction NLS_CHARSET_DECL_LEN NLS_CHARSET_ID NLS_CHARSET_NAME
syn keyword plsqlFunction NLS_INITCAP NLS_LOWER NLSSORT NLS_UPPER NULLFN NULLIF
syn keyword plsqlFunction NUMTODSINTERVAL NUMTOYMINTERVAL NVL POWER
syn keyword plsqlFunction RAISE_APPLICATION_ERROR RAWTOHEX RAWTONHEX REF
syn keyword plsqlFunction REFTOHEX REPLACE ROLLBACK_NR ROLLBACK_SV ROLLUP ROUND
syn keyword plsqlFunction ROWIDTOCHAR ROWIDTONCHAR ROWLABEL RPAD RTRIM
syn keyword plsqlFunction SAVEPOINT SESSIONTIMEZONE SETBND SET_TRANSACTION_USE
syn keyword plsqlFunction SIGN SIN SINH SOUNDEX SQLCODE SQLERRM SQRT STDDEV
syn keyword plsqlFunction SUBSTR SUBSTR2 SUBSTR4 SUBSTRB SUBSTRC SUM
syn keyword plsqlFunction SYS_AT_TIME_ZONE SYS_CONTEXT SYSDATE SYS_EXTRACT_UTC
syn keyword plsqlFunction SYS_GUID SYS_LITERALTODATE SYS_LITERALTODSINTERVAL
syn keyword plsqlFunction SYS_LITERALTOTIME SYS_LITERALTOTIMESTAMP
syn keyword plsqlFunction SYS_LITERALTOTZTIME SYS_LITERALTOTZTIMESTAMP
syn keyword plsqlFunction SYS_LITERALTOYMINTERVAL SYS_OVER__DD SYS_OVER__DI
syn keyword plsqlFunction SYS_OVER__ID SYS_OVER_IID SYS_OVER_IIT
syn keyword plsqlFunction SYS_OVER__IT SYS_OVER__TI SYS_OVER__TT
syn keyword plsqlFunction SYSTIMESTAMP TAN TANH TO_ANYLOB TO_BLOB TO_CHAR
syn keyword plsqlFunction TO_CLOB TO_DATE TO_DSINTERVAL TO_LABEL TO_MULTI_BYTE
syn keyword plsqlFunction TO_NCHAR TO_NCLOB TO_NUMBER TO_RAW TO_SINGLE_BYTE
syn keyword plsqlFunction TO_TIME TO_TIMESTAMP TO_TIMESTAMP_TZ TO_TIME_TZ
syn keyword plsqlFunction TO_YMINTERVAL TRANSLATE TREAT TRIM TRUNC TZ_OFFSET UID
syn keyword plsqlFunction UNISTR UPPER UROWID USER USERENV VALUE VARIANCE
syn keyword plsqlFunction VSIZE WORK XOR
syn keyword plsqlFunction ROW_NUMBER OVER
syn match   plsqlFunction "\<SYS\$LOB_REPLICATION\>"


syn keyword sqlType	boolean char character date float integer long decimal
syn keyword sqlType	mlslabel number raw rowid varchar varchar2 varray

" Strings and characters:
syn region sqlString		start=+"+  skip=+\\\\\|\\"+  end=+"+
syn region sqlString		start=+'+  skip=+\\\\\|\\'+  end=+'+

" Numbers:
syn match sqlNumber		"-\=\<\d*\.\=[0-9_]\>"

" Comments:
syn region sqlComment    start="/\*"  end="\*/" contains=sqlTodo
syn match sqlComment	"--.*$" contains=sqlTodo

syn sync ccomment sqlComment

" Todo.
syn keyword sqlTodo contained TODO FIXME XXX DEBUG NOTE

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_sql_syn_inits")
  if version < 508
    let did_sql_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink sqlComment	Comment
  HiLink sqlKeyword	sqlSpecial
  HiLink sqlNumber	Number
  HiLink sqlOperator	sqlStatement
  HiLink sqlSpecial	Special
  HiLink sqlStatement	Statement
  HiLink sqlString	String
  HiLink sqlType	Type
  HiLink sqlTodo	Todo
  HiLink plsqlFunction Function

  delcommand HiLink
endif

let b:current_syntax = "sql"

" vim: ts=8
