@echo off

mkdir "thesis"
cd    "thesis"

copy /Y "..\doc\fduthesis-template.tex"             .
copy /Y "..\source\fduthesis.dtx"                   .
copy /Y "..\source\fduthesis-doc.dtx"               .
copy /Y "..\source\fduthesis-logo.dtx"              .
copy /Y "..\testfiles\support\fudan-emblem.pdf"     .
copy /Y "..\testfiles\support\fudan-emblem-new.pdf" .
copy /Y "..\testfiles\support\fudan-name.pdf"       .

xetex "fduthesis.dtx" > NUL

del "*.cfg"
del "*.dtx"
del "*.ins"
del "*.log"
del "*.md"

del "fdudoc.cls"
del "fdulogo-example.tex"
del "fduthesis-cover.tex"

cd ..
