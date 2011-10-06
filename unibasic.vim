" Vim syntax file
" Language:	Universe Basic (Used also in DataStage)
" Maintainer:	Dan Sharp
" Last Change:	2008 Feb 06
"
" This file supports the UniBasic language in the UniVerse multivalue database
" system.


" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

if version >= 600
  setlocal iskeyword+=.
else
  set iskeyword+=.
endif

syn case ignore

" A bunch of useful BASIC keywords
syn keyword basicStatement	ABORT ACTIVATEKEY AUTHORIZATION AUXMAP
syn keyword basicStatement	BEGIN BREAK BSCAN
syn keyword basicStatement	CALL CALLING CAPTURING CASE CHAIN CLEAR CLEARDATA CLEARFILE CLEARPROMPTS CLEARSELECT CLOSE 
syn keyword basicStatement	CLOSESEQ COMMIT COMMON CONTINUE CREATE CRT
syn keyword basicStatement	DATA DEACTIVATEKEY DEBUG DEFFUN DELETE DELETELIST DELETEU DIMENSION DISABLEDEC DISPLAY
syn keyword basicStatement	ECHO ELSE ENABLEDEC END ENTER EOF EQUATE ERRMSG ERROR EXECUTE EXIT
syn keyword basicStatement	FILELOCK FILEUNLOCK FIND FINDSTR FLUSH FOOTING FOR FROM FUNCTION
syn keyword basicStatement	GET GETLIST GETX GOSUB GOTO GROUPSTORE
syn keyword basicStatement	HEADING HUSH
syn keyword basicStatement	IF INCLUDE INPUT INPUTCLEAR INPUTDISP INPUTDP INPUTERR INPUTNULL INPUTTRAP INS ISOLATION
syn keyword basicStatement	KEYEDIT KEYEXIT KEYTRAP
syn keyword basicStatement	LET LEVEL LOCATE LOCK LOOP
syn keyword basicStatement	MAT MATBUILD MATPARSE MATREAD MATREADL MATREADU MATWRITE MATWRITEU 
syn keyword basicStatement	NAP NEXT NOBUF
syn keyword basicStatement	OFF ON OPEN OPENDEV OPENPATH OPENSEQ
syn keyword basicStatement	PAGE PERFORM PRECISION PRINT PRINTER PRINTERR PROCREAD PROCWRITE PROGRAM PROMPT 
syn keyword basicStatement	RANDOMIZE READ READBLK READL READLIST READNEXT READSEQ READT READU READV READVL READVU RELEASE
syn keyword basicStatement	REPEAT RESET RETURN RETURNING REVREMOVE REWIND ROLLBACK
syn keyword basicStatement	SELECT SELECTE SELECTINDEX SELECTINFO SEND SET SETREM SLEEP SSELECT START STOP SUBROUTINE
syn keyword basicStatement	TABSTOP THEN TIMEOUT TO TPRINT TRANSACTION TTYCTL TTYGET TTYSET
syn keyword basicStatement	UNLOCK UNTIL UPRINT
syn keyword basicStatement	WEOF WEOFSEQ WHILE WRITE WRITEBLK WRITELIST WRITESEQ WRITESEQF WRITET WRITEU WRITEV WRITEVU

syn match  basicStatement	"\$\%(CHAIN\|COPYRIGHT\|DEFINE\|EJECT\|IFDEF\|IFNDEF\|INCLUDE\|INSERT\|MAP\|OPTIONS\|PAGE\|UNDEFINE\)"

syn keyword basicFunction	contained ABS ABSS ACOS ADDS ALPHA ANDS ASCII ASIN ASSIGNED ATAN 
syn keyword basicFunction	contained BITAND BITNOT BITOR BITRESET BITSET BITTEST BITXOR BYTE BYTELEN BYTETYPE BYTEVAL
syn keyword basicFunction	contained CATS CHANGE CHAR CHARS CHECKSUM COL1 COL2 COMPARE CONVERT COS COSH COUNT COUNTS
syn keyword basicFunction	contained DATE DCOUNT DEL DIV DIVS DOWNCASE DQUOTE DTX
syn keyword basicFunction	contained EBCDIC EQS EREPLACE EXCHANGE EXP EXTRACT
syn keyword basicFunction	contained FADD FDIV FFIX FFLT FIELD FIELDS FIELDSTORE FILEINFO FIX FMT FMTDP FMTS FMTSDP FMUL FOLD FOLDDP FSUB
syn keyword basicFunction	contained GES GETLOCALE GETREM GROUP GTS
syn keyword basicFunction	contained ICONV ICONVS IFS ILPROMPT INDEX INDEXS INDICES INMAT INSERT INT ISNULL ISNULLS ITYPE
syn keyword basicFunction	contained KEYIN
syn keyword basicFunction	contained LEFT LEN LENDP LENS LENSDP LES LEVEL LN LOCALEINFO LOWER LTS
syn keyword basicFunction	contained MATCHFIELD MAXIMUM MINIMUM MOD MODS MULS
syn keyword basicFunction	contained NEG NEGS NES NOT NOTS NUM NUMS
syn keyword basicFunction	contained OCONV OCONVS ORS
syn keyword basicFunction	contained PWR
syn keyword basicFunction	contained QUOTE
syn keyword basicFunction	contained RAISE REAL RECORDLOCKED RECORDLOCKL RECORDLOCKU REMOVE REPLACE REUSE 
syn keyword basicFunction	contained RIGHT RND RPC.CALL RPC.CONNECT RPC.DISCONNECT
syn keyword basicFunction	contained SADD SCMP SDIV SEEK SENTENCE SEQ SEQS SETLOCALE SIN SINH SMUL SOUNDEX SPACE SPACES SPLICE SQRT
syn keyword basicFunction	contained SQUOTE SSUB START STR STRS SUBR SUBS SUBSTRINGS SUM SUMMATION SYSTEM 
syn keyword basicFunction	contained TAN TANH TERMINFO TIME TIMEDATE TPARM TRANS TRIM TRIMB TRIMBS TRIMF TRIMFS TRIMS
syn keyword basicFunction	contained UNASSIGNED UNICHAR UNICHARS UNISEQ UNISEQS UPCASE
syn keyword basicFunction	contained XLATE XTD

syn keyword basicFunction	contained amInitialize amReceiveMsg amReceiveRequest amSendMsg amSendRequest amSendResponse amTerminate

syn match basicFunctions         "\k\+(" contains=basicFunction transparent

syn match basicConditional      "="
syn match basicConditional      ":"
syn match basicConditional      "<>"
syn match basicConditional      "#"
syn match basicConditional      "<"
syn match basicConditional      ">"
syn match basicConditional      ">="
syn match basicConditional      "<="
syn match basicConditional      ":="
syn match basicConditional      "+="
syn keyword basicConditional      AND
syn keyword basicConditional      OR

"done "integer number, or floating point number without a dot.
"done syn match  basicNumber		"\<\d\+\>"
"done "floating point number, with dot
"done syn match  basicNumber		"\<\d\+\.\d*\>"
"done "floating point number, starting with a dot
"done syn match  basicNumber		"\.\d\+\>"

syn match  basicSpecial         "^\k*\:"

syn match  basicSpecial         "@DATE"
syn match  basicSpecial         "@FM"
syn match  basicSpecial         "@VM"
syn match  basicSpecial         "@AM"
syn match  basicSpecial         "@NULL"
syn match  basicSpecial         "@COMMAND"
syn match  basicSpecial         "@ID"
syn match  basicSpecial         "@OPTION"
syn match  basicSpecial         "@RECORD"
syn match  basicSpecial         "@SENTENCE"
syn match  basicSpecial         "@SELECTED"
syn match  basicSpecial         "@TTY"

syn region  basicString		start=+"+  end=+"+  
syn region  basicString		start=+'+  end=+'+  
syn region  basicString		start=+\\+  end=+\\+  

syn keyword basicTodo   contained TODO FIXME XXX

syn region  basicComment start="\%(^\|;\zs\)\s*REM\s" end="$" contains=basicTodo
syn region  basicComment start="\%(^\|;\zs\)\s*\*" end="$" contains=basicTodo
syn region  basicComment start="\%(^\|;\zs\)\s*!" end="$" contains=basicTodo
syn region  basicComment start="\%(^\|;\zs\)\s*\$\*" end="$" contains=basicTodo
