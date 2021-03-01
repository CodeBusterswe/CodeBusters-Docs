echo Compilazione documentazione esterna
cd DocEsterna

cd AnalisiDeiRequisiti
pdflatex AnalisiDeiRequisiti.tex -jobname=AnalisiDeiRequisiti_v2.0.0-0.2>NUL

cd ..\PianoDiProgetto
pdflatex PianoDiProgetto.tex -jobname=PianoDiProgetto_v2.0.0-0.2>NUL

cd ..\PianoDiQualifica
pdflatex PianoDiQualifica.tex -jobname=PianoDiQualifica_v2.0.0-0.2>NUL

cd ..\Glossario
pdflatex Glossario.tex -jobname=Glossario_v2.0.0-0.2>NUL

cd ..\Verbali

cd VE_2021_02_05 
pdflatex VerbaleEsterno -jobname=VE_2021_02_05 >NUL

cd ..\VE_2021_02_18
pdflatex VerbaleEsterno -jobname=VE_2021_02_18 >NUL

echo Compilazione documentazione interna
cd ..\..\..\DocInterna

cd NormeDiProgetto
pdflatex NormeDiProgetto.tex -jobname=NormeDiProgetto_v2.0.0-0.2>NUL

cd ..\Verbali

cd VI_2021_02_08
pdflatex VerbaleInterno -jobname=VI_2021_02_08 >NUL

cd ..\VI_2021_02_17
pdflatex VerbaleInterno -jobname=VI_2021_02_17 >NUL

cd ..\VI_2021_02_23
pdflatex VerbaleInterno -jobname=VI_2021_02_23 >NUL

cd ..\..\..\
echo Compilazione lettera
pdflatex LetteraDiPresentazione >NUL

echo Copio i compilati
copy DocEsterna\AnalisiDeiRequisiti\AnalisiDeiRequisiti_v2.0.0-0.2.pdf pdf
copy DocEsterna\PianoDiProgetto\PianoDiProgetto_v2.0.0-0.2.pdf pdf
copy DocEsterna\Glossario\Glossario_v2.0.0-0.2.pdf pdf
copy DocEsterna\PianoDiQualifica\PianoDiQualifica_v2.0.0-0.2.pdf pdf
copy DocEsterna\Verbali\VE_2021_02_05\VE_2021_02_05.pdf pdf
copy DocEsterna\Verbali\VE_2021_02_18\VE_2021_02_18.pdf pdf
copy DocInterna\NormeDiProgetto\NormeDiProgetto_v2.0.0-0.2.pdf pdf
copy DocInterna\Verbali\VI_2021_02_08\VI_2021_02_08.pdf pdf
copy DocInterna\Verbali\VI_2021_02_17\VI_2021_02_17.pdf pdf
copy DocInterna\Verbali\VI_2021_02_23\VI_2021_02_23.pdf pdf
copy LetteraDiPresentazione.pdf pdf


echo compilazione terminata
