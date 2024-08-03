@echo off
SetLocal ENABLEDELAYEDEXPANSION

::::____________Citesc date din sudoku_9x9.txt

set file2=sudoku_9x9.txt
set /a cc=0
For /F "UseBackQ tokens=*" %%A IN ("%file2%") do (
        set /a c=0
        set tral=%%A
        set /a cc+=1
        for /L %%H in (0,1,8) do (
               set /a c+=1
               set "temp1=!tral:~%%H,1!"
               if !temp1! == 0 (set "a!cc!!c!=123456789") else set "a!cc!!c!=!temp1!"
           
              )

        )
::::____________Citesc date din sudoku_9x9.txt _____END

:: Creezi tabela pentru comparatie.
For /L %%s in (1,1,9) do For /L %%d in (1,1,9) do set c%%s%%d=!a%%s%%d!

:Start1



For /L %%t in (1,1,9) do (call :strlen a1%%t dlina
if !dlina! GTR 1 call :TestLine1 1 a1%%t !a1%%t!)
For /L %%t in (1,1,9) do (call :strlen a2%%t dlina
if !dlina! GTR 1 call :TestLine1 2 a2%%t !a2%%t!)
For /L %%t in (1,1,9) do (call :strlen a3%%t dlina
if !dlina! GTR 1 call :TestLine1 3 a3%%t !a3%%t!)
For /L %%t in (1,1,9) do (call :strlen a4%%t dlina
if !dlina! GTR 1 call :TestLine1 4 a4%%t !a4%%t!)
For /L %%t in (1,1,9) do (call :strlen a5%%t dlina
if !dlina! GTR 1 call :TestLine1 5 a5%%t !a5%%t!)
For /L %%t in (1,1,9) do (call :strlen a6%%t dlina
if !dlina! GTR 1 call :TestLine1 6 a6%%t !a6%%t!)
For /L %%t in (1,1,9) do (call :strlen a7%%t dlina
if !dlina! GTR 1 call :TestLine1 7 a7%%t !a7%%t!)
For /L %%t in (1,1,9) do (call :strlen a8%%t dlina
if !dlina! GTR 1 call :TestLine1 8 a8%%t !a8%%t!)
For /L %%t in (1,1,9) do (call :strlen a9%%t dlina
if !dlina! GTR 1 call :TestLine1 9 a9%%t !a9%%t!)



For /L %%t in (1,1,9) do (call :strlen a%%t1 dlina
if !dlina! GTR 1 call :TestLine2 1 a%%t1 !a%%t1!)
For /L %%t in (1,1,9) do (call :strlen a%%t2 dlina
if !dlina! GTR 1 call :TestLine2 2 a%%t2 !a%%t2!)
For /L %%t in (1,1,9) do (call :strlen a%%t3 dlina
if !dlina! GTR 1 call :TestLine2 3 a%%t3 !a%%t3!)
For /L %%t in (1,1,9) do (call :strlen a%%t4 dlina
if !dlina! GTR 1 call :TestLine2 4 a%%t4 !a%%t4!)
For /L %%t in (1,1,9) do (call :strlen a%%t5 dlina
if !dlina! GTR 1 call :TestLine2 5 a%%t5 !a%%t5!)
For /L %%t in (1,1,9) do (call :strlen a%%t6 dlina
if !dlina! GTR 1 call :TestLine2 6 a%%t6 !a%%t6!)
For /L %%t in (1,1,9) do (call :strlen a%%t7 dlina
if !dlina! GTR 1 call :TestLine2 7 a%%t7 !a%%t7!)
For /L %%t in (1,1,9) do (call :strlen a%%t8 dlina
if !dlina! GTR 1 call :TestLine2 8 a%%t8 !a%%t8!)
For /L %%t in (1,1,9) do (call :strlen a%%t9 dlina
if !dlina! GTR 1 call :TestLine2 9 a%%t9 !a%%t9!)


:::::::::::::::Patrate 3x3________________________

call :strlen a11 dlina
if %dlina% GTR 1 call :TestPatrat1 1 a11 !a11! 
call :strlen a12 dlina
if %dlina% GTR 1 call :TestPatrat1 1 a12 !a12! 
call :strlen a13 dlina
if %dlina% GTR 1 call :TestPatrat1 1 a13 !a13! 
call :strlen a21 dlina
if %dlina% GTR 1 call :TestPatrat1 1 a21 !a21! 
call :strlen a22 dlina
if %dlina% GTR 1 call :TestPatrat1 1 a22 !a22! 
call :strlen a23 dlina
if %dlina% GTR 1 call :TestPatrat1 1 a23 !a23! 
call :strlen a31 dlina
if %dlina% GTR 1 call :TestPatrat1 1 a31 !a31! 
call :strlen a32 dlina
if %dlina% GTR 1 call :TestPatrat1 1 a32 !a32! 
call :strlen a33 dlina
if %dlina% GTR 1 call :TestPatrat1 1 a33 !a33! 

call :strlen a14 dlina
if %dlina% GTR 1 call :TestPatrat2 1 a14 !a14! 
call :strlen a15 dlina
if %dlina% GTR 1 call :TestPatrat2 1 a15 !a15! 
call :strlen a16 dlina
if %dlina% GTR 1 call :TestPatrat2 1 a16 !a16! 
call :strlen a24 dlina
if %dlina% GTR 1 call :TestPatrat2 1 a24 !a24! 
call :strlen a25 dlina
if %dlina% GTR 1 call :TestPatrat2 1 a25 !a25! 
call :strlen a26 dlina
if %dlina% GTR 1 call :TestPatrat2 1 a26 !a26! 
call :strlen a34 dlina
if %dlina% GTR 1 call :TestPatrat2 1 a34 !a34! 
call :strlen a35 dlina
if %dlina% GTR 1 call :TestPatrat2 1 a35 !a35! 
call :strlen a36 dlina
if %dlina% GTR 1 call :TestPatrat2 1 a36 !a36! 

call :strlen a17 dlina
if %dlina% GTR 1 call :TestPatrat3 1 a17 !a17! 
call :strlen a18 dlina
if %dlina% GTR 1 call :TestPatrat3 1 a18 !a18! 
call :strlen a19 dlina
if %dlina% GTR 1 call :TestPatrat3 1 a19 !a19! 
call :strlen a27 dlina
if %dlina% GTR 1 call :TestPatrat3 1 a27 !a27! 
call :strlen a28 dlina
if %dlina% GTR 1 call :TestPatrat3 1 a28 !a28! 
call :strlen a29 dlina
if %dlina% GTR 1 call :TestPatrat3 1 a29 !a29! 
call :strlen a37 dlina
if %dlina% GTR 1 call :TestPatrat3 1 a37 !a37! 
call :strlen a38 dlina
if %dlina% GTR 1 call :TestPatrat3 1 a38 !a38! 
call :strlen a39 dlina
if %dlina% GTR 1 call :TestPatrat3 1 a39 !a39! 

call :strlen a41 dlina
if %dlina% GTR 1 call :TestPatrat4 1 a41 !a41! 
call :strlen a42 dlina
if %dlina% GTR 1 call :TestPatrat4 1 a42 !a42! 
call :strlen a43 dlina
if %dlina% GTR 1 call :TestPatrat4 1 a43 !a43! 
call :strlen a51 dlina
if %dlina% GTR 1 call :TestPatrat4 1 a51 !a51! 
call :strlen a52 dlina
if %dlina% GTR 1 call :TestPatrat4 1 a52 !a52! 
call :strlen a53 dlina
if %dlina% GTR 1 call :TestPatrat4 1 a53 !a53! 
call :strlen a61 dlina
if %dlina% GTR 1 call :TestPatrat4 1 a61 !a61! 
call :strlen a62 dlina
if %dlina% GTR 1 call :TestPatrat4 1 a62 !a62! 
call :strlen a63 dlina
if %dlina% GTR 1 call :TestPatrat4 1 a63 !a63! 

call :strlen a44 dlina
if %dlina% GTR 1 call :TestPatrat5 1 a44 !a44! 
call :strlen a45 dlina
if %dlina% GTR 1 call :TestPatrat5 1 a45 !a45! 
call :strlen a46 dlina
if %dlina% GTR 1 call :TestPatrat5 1 a46 !a46! 
call :strlen a54 dlina
if %dlina% GTR 1 call :TestPatrat5 1 a54 !a54! 
call :strlen a55 dlina
if %dlina% GTR 1 call :TestPatrat5 1 a55 !a55! 
call :strlen a56 dlina
if %dlina% GTR 1 call :TestPatrat5 1 a56 !a56! 
call :strlen a64 dlina
if %dlina% GTR 1 call :TestPatrat5 1 a64 !a64! 
call :strlen a65 dlina
if %dlina% GTR 1 call :TestPatrat5 1 a65 !a65! 
call :strlen a66 dlina
if %dlina% GTR 1 call :TestPatrat5 1 a66 !a66! 

call :strlen a47 dlina
if %dlina% GTR 1 call :TestPatrat6 1 a47 !a47! 
call :strlen a48 dlina
if %dlina% GTR 1 call :TestPatrat6 1 a48 !a48! 
call :strlen a49 dlina
if %dlina% GTR 1 call :TestPatrat6 1 a49 !a49! 
call :strlen a57 dlina
if %dlina% GTR 1 call :TestPatrat6 1 a57 !a57! 
call :strlen a58 dlina
if %dlina% GTR 1 call :TestPatrat6 1 a58 !a58! 
call :strlen a59 dlina
if %dlina% GTR 1 call :TestPatrat6 1 a59 !a59! 
call :strlen a67 dlina
if %dlina% GTR 1 call :TestPatrat6 1 a67 !a67! 
call :strlen a68 dlina
if %dlina% GTR 1 call :TestPatrat6 1 a68 !a68! 
call :strlen a69 dlina
if %dlina% GTR 1 call :TestPatrat6 1 a69 !a69! 

call :strlen a71 dlina
if %dlina% GTR 1 call :TestPatrat7 1 a71 !a71! 
call :strlen a72 dlina
if %dlina% GTR 1 call :TestPatrat7 1 a72 !a72! 
call :strlen a73 dlina
if %dlina% GTR 1 call :TestPatrat7 1 a73 !a73! 
call :strlen a81 dlina
if %dlina% GTR 1 call :TestPatrat7 1 a81 !a81! 
call :strlen a82 dlina
if %dlina% GTR 1 call :TestPatrat7 1 a82 !a82! 
call :strlen a83 dlina
if %dlina% GTR 1 call :TestPatrat7 1 a83 !a83! 
call :strlen a91 dlina
if %dlina% GTR 1 call :TestPatrat7 1 a91 !a91! 
call :strlen a92 dlina
if %dlina% GTR 1 call :TestPatrat7 1 a92 !a92! 
call :strlen a93 dlina
if %dlina% GTR 1 call :TestPatrat7 1 a93 !a93! 

call :strlen a74 dlina
if %dlina% GTR 1 call :TestPatrat8 1 a74 !a74! 
call :strlen a75 dlina
if %dlina% GTR 1 call :TestPatrat8 1 a75 !a75! 
call :strlen a76 dlina
if %dlina% GTR 1 call :TestPatrat8 1 a76 !a76! 
call :strlen a84 dlina
if %dlina% GTR 1 call :TestPatrat8 1 a84 !a84! 
call :strlen a85 dlina
if %dlina% GTR 1 call :TestPatrat8 1 a85 !a85! 
call :strlen a86 dlina
if %dlina% GTR 1 call :TestPatrat8 1 a86 !a86! 
call :strlen a94 dlina
if %dlina% GTR 1 call :TestPatrat8 1 a94 !a94! 
call :strlen a95 dlina
if %dlina% GTR 1 call :TestPatrat8 1 a95 !a95! 
call :strlen a96 dlina
if %dlina% GTR 1 call :TestPatrat8 1 a96 !a96! 

call :strlen a77 dlina
if %dlina% GTR 1 call :TestPatrat9 1 a77 !a77! 
call :strlen a78 dlina
if %dlina% GTR 1 call :TestPatrat9 1 a78 !a78! 
call :strlen a79 dlina
if %dlina% GTR 1 call :TestPatrat9 1 a79 !a79! 
call :strlen a87 dlina
if %dlina% GTR 1 call :TestPatrat9 1 a87 !a87! 
call :strlen a88 dlina
if %dlina% GTR 1 call :TestPatrat9 1 a88 !a88! 
call :strlen a89 dlina
if %dlina% GTR 1 call :TestPatrat9 1 a89 !a89! 
call :strlen a97 dlina
if %dlina% GTR 1 call :TestPatrat9 1 a97 !a97! 
call :strlen a98 dlina
if %dlina% GTR 1 call :TestPatrat9 1 a98 !a98! 
call :strlen a99 dlina
if %dlina% GTR 1 call :TestPatrat9 1 a99 !a99! 


:::::::::::::::Patrate 3x3________________________END

::::::::::::::::::::_Verificare in tabela b[x,y]
::::::::::::::::::::_cite o cifra separat

FOR /L %%q in (1,1,9) do ( 

    For /L %%s in (1,1,9) do ( 
        for /l %%d in (1,1,9) do (
            set "tral=!a%%s%%d!"
            call :strlen a%%s%%d dlina
            if !dlina! GTR 1 (call :Decupare2 %%q %%s %%d
                             ) else if !a%%s%%d! == %%q (set "b%%s%%d=!a%%s%%d!"
                                                        ) else set "b%%s%%d=0"
                                 )
                             )

    For /L %%k in (1,1,9) do ( 
        for /L %%j in (1,1,9) do ( 
            set summ1=0
            if !b%%k%%j! == %%q call :ContinutPatrat %%k %%j
            if !summ1! == %%q set a%%k%%j=%%q
            if !b%%k%%j! == %%q call :VerUnuLin %%q %%k %%j
                                 )
                             )
)
::::::::::::::::::::::::::::::::::::::::::::::::::::__END

:::::::::::::::::::::::::::::::::____________Tabela pentru comparatie celulelor
:::::::::::::::::::::::::::::::::____________daca s-a schimbat continutul sau nu
:::::::::::::::::::::::::::::::::____________daca nu, iesim din program
set cont=0
echo.
For /L %%s in (1,1,9) do For /L %%d in (1,1,9) do if "!c%%s%%d!" NEQ "!a%%s%%d!" (set "c%%s%%d=!a%%s%%d!" & set /a cont+=1)
if %cont% == 0 echo Calcul nu a dat rezultate & goto Gicesc
echo Diferenta - %cont% celule

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


::::::::::::::::::::::::::::::______Verificarea sumei pe coloane
::::::::::::::::::::::::::::::______tre sa fie 45
::::::::::::::::::::::::::::::______daca nu, se repeta calcul

set /a "joc=%a11%+%a21%+%a31%+%a41%+%a51%+%a61%+%a71%+%a81%+%a91%"
if %joc% NEQ 45 goto Rand1

set /a "joc=%a12%+%a22%+%a32%+%a42%+%a52%+%a62%+%a72%+%a82%+%a92%"
if %joc% NEQ 45 goto Rand1

set /a "joc=%a13%+%a23%+%a33%+%a43%+%a53%+%a63%+%a73%+%a83%+%a93%"
if %joc% NEQ 45 goto Rand1

set /a "joc=%a14%+%a24%+%a34%+%a44%+%a54%+%a64%+%a74%+%a84%+%a94%"
if %joc% NEQ 45 goto Rand1

set /a "joc=%a15%+%a25%+%a35%+%a45%+%a55%+%a65%+%a75%+%a85%+%a95%"
if %joc% NEQ 45 goto Rand1

set /a "joc=%a16%+%a26%+%a36%+%a46%+%a56%+%a66%+%a76%+%a86%+%a96%"
if %joc% NEQ 45 goto Rand1

set /a "joc=%a17%+%a27%+%a37%+%a47%+%a57%+%a67%+%a77%+%a87%+%a97%"
if %joc% NEQ 45 goto Rand1

set /a "joc=%a18%+%a28%+%a38%+%a48%+%a58%+%a68%+%a78%+%a88%+%a98%"
if %joc% NEQ 45 goto Rand1

set /a "joc=%a19%+%a29%+%a39%+%a49%+%a59%+%a69%+%a79%+%a89%+%a99%"
if %joc% NEQ 45 goto Rand1
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


::::::::::::::::::_____Afisare__Rezultat_____::::::::::::::::::
echo.
echo.ù ----- - ----- - ----- ù
For /L %%s in (1,1,9) do ( 
 < nul set /p str="| "
 For /L %%d in (1,1,9) do (
 < nul set /p str="!a%%s%%d! "
  if [%%d] == [3] < nul set /p str=" | "
  if [%%d] == [6] < nul set /p str=" | "
                           )
echo.^|
if [%%s] == [3] echo.^| ----- + ----- + ----- ^|
if [%%s] == [6] echo.^| ----- + ----- + ----- ^|
)
echo.ù ----- - ----- - ----- ù

exit /b 0

::::::::::::::::::::___________________________________________________________________Sfirsit_________

:Rand1
::::::::::::::::::_____Afisare__Prelucrare_____::::::::::::::::::

For /L %%s in (1,1,9) do ( 
 < nul set /p str="| "
 For /L %%d in (1,1,9) do (
 < nul set /p str="!a%%s%%d! "
  if [%%d] == [3] < nul set /p str=" | "
  if [%%d] == [6] < nul set /p str=" | "
                           )
echo.^|
if [%%s] == [3] echo.
if [%%s] == [6] echo.
)
echo.

echo. Repeta (Z) Exit (X)
CHOICE /T 4 /N /C zx /D z >nul
if errorlevel 2 exit /b 0
if errorlevel 1 goto :Start1

exit /b


:Decupare1
set /a dlina-=1
For /l %%H in (0,1,%dlina%) do (
              set temp1=!tral:~%%H,1!
              if !temp1! == %~1 < nul set /p str="!temp1! " & exit /b
                                )
< nul set /p str="- "
exit /b


:Decupare2
set /a dlina-=1
For /l %%H in (0,1,%dlina%) do (
             set temp1=!tral:~%%H,1!
             if !temp1! == %~1 set "b%~2%~3=!temp1!" & exit /b
                               )
set "b%~2%~3=0"
exit /b


:VerUnuLin
set "unu="
for /l %%N in (1,1,9) do set /a "unu+=!b%~2%%N!"
if %unu% == %~1 set "a%~2%~3=%~1" & exit /b
set "unu="
for /l %%N in (1,1,9) do set /a "unu+=!b%%N%~3!"
if %unu% == %~1 set "a%~2%~3=%~1" & exit /b
exit /b


:TestLine1
set tral=%3
set temp2=
set aa=%1
For /L %%H in (0,1,8) do (
    set temp1=!tral:~%%H,1!
    if !temp1! == !a%aa%1! set temp1=
    if !temp1! == !a%aa%2! set temp1=
    if !temp1! == !a%aa%3! set temp1=
    if !temp1! == !a%aa%4! set temp1=
    if !temp1! == !a%aa%5! set temp1=
    if !temp1! == !a%aa%6! set temp1=
    if !temp1! == !a%aa%7! set temp1=
    if !temp1! == !a%aa%8! set temp1=
    if !temp1! == !a%aa%9! set temp1=

    set temp2=!temp2!!temp1!
)
set %2=%temp2%
exit /b


:TestLine2
set tral=%3
set temp2=
set aa=%1
For /L %%H in (0,1,8) do (
    set temp1=!tral:~%%H,1!
    if !temp1! == !a1%aa%! set temp1=
    if !temp1! == !a2%aa%! set temp1=
    if !temp1! == !a3%aa%! set temp1=
    if !temp1! == !a4%aa%! set temp1=
    if !temp1! == !a5%aa%! set temp1=
    if !temp1! == !a6%aa%! set temp1=
    if !temp1! == !a7%aa%! set temp1=
    if !temp1! == !a8%aa%! set temp1=
    if !temp1! == !a9%aa%! set temp1=

    set temp2=!temp2!!temp1!
)
set %2=%temp2%
exit /b

:TestPatrat1
set tral=%3
set temp2=
set aa=%1
For /L %%H in (0,1,8) do (
    set temp1=!tral:~%%H,1!
    if !temp1! == !a11! set temp1=
    if !temp1! == !a12! set temp1=
    if !temp1! == !a13! set temp1=
    if !temp1! == !a21! set temp1=
    if !temp1! == !a22! set temp1=
    if !temp1! == !a23! set temp1=
    if !temp1! == !a31! set temp1=
    if !temp1! == !a32! set temp1=
    if !temp1! == !a33! set temp1=

    set temp2=!temp2!!temp1!
)
set %2=%temp2%
exit /b

:TestPatrat2
set tral=%3
set temp2=
set aa=%1
For /L %%H in (0,1,8) do (
    set temp1=!tral:~%%H,1!
    if !temp1! == !a14! set temp1=
    if !temp1! == !a15! set temp1=
    if !temp1! == !a16! set temp1=
    if !temp1! == !a24! set temp1=
    if !temp1! == !a25! set temp1=
    if !temp1! == !a26! set temp1=
    if !temp1! == !a34! set temp1=
    if !temp1! == !a35! set temp1=
    if !temp1! == !a36! set temp1=

    set temp2=!temp2!!temp1!
)
set %2=%temp2%
exit /b

:TestPatrat3
set tral=%3
set temp2=
set aa=%1
For /L %%H in (0,1,8) do (
    set temp1=!tral:~%%H,1!
    if !temp1! == !a17! set temp1=
    if !temp1! == !a18! set temp1=
    if !temp1! == !a19! set temp1=
    if !temp1! == !a27! set temp1=
    if !temp1! == !a28! set temp1=
    if !temp1! == !a29! set temp1=
    if !temp1! == !a37! set temp1=
    if !temp1! == !a38! set temp1=
    if !temp1! == !a39! set temp1=

    set temp2=!temp2!!temp1!
)
set %2=%temp2%
exit /b


:TestPatrat4
set tral=%3
set temp2=
set aa=%1
For /L %%H in (0,1,8) do (
    set temp1=!tral:~%%H,1!
    if !temp1! == !a41! set temp1=
    if !temp1! == !a42! set temp1=
    if !temp1! == !a43! set temp1=
    if !temp1! == !a51! set temp1=
    if !temp1! == !a52! set temp1=
    if !temp1! == !a53! set temp1=
    if !temp1! == !a61! set temp1=
    if !temp1! == !a62! set temp1=
    if !temp1! == !a63! set temp1=

    set temp2=!temp2!!temp1!
)
set %2=%temp2%
exit /b

:TestPatrat5
set tral=%3
set temp2=
set aa=%1
For /L %%H in (0,1,8) do (
    set temp1=!tral:~%%H,1!
    if !temp1! == !a44! set temp1=
    if !temp1! == !a45! set temp1=
    if !temp1! == !a46! set temp1=
    if !temp1! == !a54! set temp1=
    if !temp1! == !a55! set temp1=
    if !temp1! == !a56! set temp1=
    if !temp1! == !a64! set temp1=
    if !temp1! == !a65! set temp1=
    if !temp1! == !a66! set temp1=

    set temp2=!temp2!!temp1!
)
set %2=%temp2%
exit /b

:TestPatrat6
set tral=%3
set temp2=
set aa=%1
For /L %%H in (0,1,8) do (
    set temp1=!tral:~%%H,1!
    if !temp1! == !a47! set temp1=
    if !temp1! == !a48! set temp1=
    if !temp1! == !a49! set temp1=
    if !temp1! == !a57! set temp1=
    if !temp1! == !a58! set temp1=
    if !temp1! == !a59! set temp1=
    if !temp1! == !a67! set temp1=
    if !temp1! == !a68! set temp1=
    if !temp1! == !a69! set temp1=

    set temp2=!temp2!!temp1!
)
set %2=%temp2%
exit /b


:TestPatrat7
set tral=%3
set temp2=
set aa=%1
For /L %%H in (0,1,8) do (
    set temp1=!tral:~%%H,1!
    if !temp1! == !a71! set temp1=
    if !temp1! == !a72! set temp1=
    if !temp1! == !a73! set temp1=
    if !temp1! == !a81! set temp1=
    if !temp1! == !a82! set temp1=
    if !temp1! == !a83! set temp1=
    if !temp1! == !a91! set temp1=
    if !temp1! == !a92! set temp1=
    if !temp1! == !a93! set temp1=

    set temp2=!temp2!!temp1!
)
set %2=%temp2%
exit /b

:TestPatrat8
set tral=%3
set temp2=
set aa=%1
For /L %%H in (0,1,8) do (
    set temp1=!tral:~%%H,1!
    if !temp1! == !a74! set temp1=
    if !temp1! == !a75! set temp1=
    if !temp1! == !a76! set temp1=
    if !temp1! == !a84! set temp1=
    if !temp1! == !a85! set temp1=
    if !temp1! == !a86! set temp1=
    if !temp1! == !a94! set temp1=
    if !temp1! == !a95! set temp1=
    if !temp1! == !a96! set temp1=

    set temp2=!temp2!!temp1!
)
set %2=%temp2%
exit /b

:TestPatrat9
set tral=%3
set temp2=
set aa=%1
For /L %%H in (0,1,8) do (
    set temp1=!tral:~%%H,1!
    if !temp1! == !a77! set temp1=
    if !temp1! == !a78! set temp1=
    if !temp1! == !a79! set temp1=
    if !temp1! == !a87! set temp1=
    if !temp1! == !a88! set temp1=
    if !temp1! == !a89! set temp1=
    if !temp1! == !a97! set temp1=
    if !temp1! == !a98! set temp1=
    if !temp1! == !a99! set temp1=

    set temp2=!temp2!!temp1!
)
set %2=%temp2%
exit /b



::---------------------calcul lungime text-----
:strlen
:strlen4  StrVar  RtnVar  --  be sure to check if the returned errorlevel is 0
(   setlocal enabledelayedexpansion & set /a "}=0"
    if "%~1" neq "" if defined %~1 (
        for %%# in (4096 2048 1024 512 256 128 64 32 16) do (
            if "!%~1:~%%#,1!" neq "" set "%~1=!%~1:~%%#!" & set /a "}+=%%#"
        ) > NUL
        set "%~1=!%~1!0FEDCBA9876543211" & set /a "}+=0x!%~1:~32,1!!%~1:~16,1!"
    )
)
endlocal & set /a "%~2=%}%" & exit /b

::---------------------calcul lungime text-----END



:ContinutPatrat

::::::::::::::::::_________ afisarea continulului patratului
::::::::::::::::::_________ in care se afla celula data a[zz,xx]
::::::::::::::::::_________ zz - rindul, xx - coloana

set zz=%~1
set xx=%~2

call :IfPatrat %xx% xx yy
call :IfPatrat %zz% zz tt

   
For /L %%m in (%zz%,1,%tt%) do (
    For /L %%k in (%xx%,1,%yy%) do (
        set /a "summ1+=!b%%m%%k!"
        rem < nul set /p str="!b%%m%%k! "
                                    )
                                )
exit /b

:IfPatrat
if %~1 GEQ 1 if %~1 LEQ 3 set "%~2=1" & set "%~3=3"
if %~1 GEQ 4 if %~1 LEQ 6 set "%~2=4" & set "%~3=6"
if %~1 GEQ 7 if %~1 LEQ 9 set "%~2=7" & set "%~3=9"
exit /b

::::::::::::::::::_________ afisarea continulului patratului __END

:Gicesc
echo.
For /L %%s in (1,1,9) do (For /L %%d in (1,1,9) do (
    call :strlen a%%s%%d dlina
	if "!dlina!" == "1" (set "d%%s%%d=!a%%s%%d!"
	) else set "d%%s%%d=0
	< nul set /p str="!d%%s%%d!")
						 echo.)
exit /b