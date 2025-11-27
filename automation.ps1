param(
    [string]$SourceFile = "myLang.k"
)

bison -d parser.y 2>4null
if ($LASTEXITCODE -ne 0) { exit }

flex lexer.l
if ($LASTEXITCODE -ne 0) { exit }


gcc -o mycompiler parser.tab.c lex.yy.c

if (-not (Test-Path "./mycompiler.exe")) {
    Write-Host "Compiler build failed."
    exit
}

./mycompiler.exe $SourceFile

if (-not (Test-Path "./generated_executable.exe")) {
    Write-Host "C++ compilation failed. Check compile_errors.txt."
    exit
}

./generated_executable.exe
