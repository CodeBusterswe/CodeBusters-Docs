echo Compilazione documentazione esterna
cd DocEsterna

cd AnalisiDeiRequisiti
pdflatex AnalisiDeiRequisiti.tex -jobname=AnalisiDeiRequisiti_v3.0.0-1.7>NUL

cd ..\PianoDiProgetto
pdflatex PianoDiProgetto.tex -jobname=PianoDiProgetto_v3.0.0-1.7>NUL

cd ..\PianoDiQualifica
pdflatex PianoDiQualifica.tex -jobname=PianoDiQualifica_v3.0.0-1.7>NUL

cd ..\Glossario
pdflatex Glossario.tex -jobname=Glossario_v3.0.0-1.7>NUL

cd ..\ManualeUtente
pdflatex ManualeUtente.tex -jobname=ManualeUtente_v1.0.0-1.7>NUL

cd ..\ManualeSviluppatore
pdflatex ManualeSviluppatore.tex -jobname=ManualeSviluppatore_v1.0.0-1.7>NUL

cd ..\Verbali

cd VE_2021_03_25 
pdflatex VerbaleEsterno -jobname=VE_2021_03_25 >NUL

cd ..\VE_2021_04_22
pdflatex VerbaleEsterno -jobname=VE_2021_04_22 >NUL

echo Compilazione documentazione interna
cd ..\..\..\DocInterna

cd NormeDiProgetto
pdflatex NormeDiProgetto.tex -jobname=NormeDiProgetto_v3.0.0-1.7>NUL

cd ..\Verbali

cd VI_2021_03_10
pdflatex VerbaleInterno -jobname=VI_2021_03_10 >NUL

cd ..\VI_2021_03_16
pdflatex VerbaleInterno -jobname=VI_2021_03_16 >NUL

cd ..\VI_2021_03_24
pdflatex VerbaleInterno -jobname=VI_2021_03_24 >NUL

cd ..\VI_2021_04_10
pdflatex VerbaleInterno -jobname=VI_2021_04_10 >NUL

cd ..\..\..\
echo Compilazione lettera
pdflatex LetteraDiPresentazione >NUL

echo Copio i compilati
copy DocEsterna\AnalisiDeiRequisiti\AnalisiDeiRequisiti_v3.0.0-1.7.pdf pdf
copy DocEsterna\PianoDiProgetto\PianoDiProgetto_v3.0.0-1.7.pdf pdf
copy DocEsterna\Glossario\Glossario_v3.0.0-1.7.pdf pdf
copy DocEsterna\PianoDiQualifica\PianoDiQualifica_v3.0.0-1.7.pdf pdf
copy DocEsterna\ManualeUtente\ManualeUtente_v1.0.0-1.7.pdf pdf
copy DocEsterna\ManualeSviluppatore\ManualeSviluppatore_v1.0.0-1.7.pdf pdf
copy DocEsterna\PianoDiQualifica\PianoDiQualifica_v3.0.0-1.7.pdf pdf
copy DocEsterna\Verbali\VE_2021_03_25\VE_2021_03_25.pdf pdf
copy DocEsterna\Verbali\VE_2021_04_22\VE_2021_04_22.pdf pdf
copy DocInterna\NormeDiProgetto\NormeDiProgetto_v3.0.0-1.7.pdf pdf
copy DocInterna\Verbali\VI_2021_03_10\VI_2021_03_10.pdf pdf
copy DocInterna\Verbali\VI_2021_03_16\VI_2021_03_16.pdf pdf
copy DocInterna\Verbali\VI_2021_03_24\VI_2021_03_24.pdf pdf
copy DocInterna\Verbali\VI_2021_04_10\VI_2021_04_10.pdf pdf
copy LetteraDiPresentazione.pdf pdf


echo compilazione terminata
