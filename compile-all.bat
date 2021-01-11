echo Compilazione documentazione esterna
cd DocEsterna

cd AnalisiDeiRequisiti
pdflatex AnalisiDeiRequisiti.tex -jobname=AnalisiDeiRequisiti_v1.0.0>NUL

cd ..\PianoDiProgetto
pdflatex PianoDiProgetto.tex -jobname=PianoDiProgetto_v1.0.0>NUL

cd ..\PianoDiQualifica
pdflatex PianoDiQualifica.tex -jobname=PianoDiQualifica_v1.0.0>NUL

cd ..\Glossario
pdflatex Glossario.tex -jobname=Glossario_v1.0.0>NUL

cd ..\Verbali
cd VE_2020_12_17 
pdflatex VerbaleEsterno -jobname=VE_2020_12_17 >NUL

echo Compilazione documentazione interna
cd ..\..\..\DocInterna

cd StudioDiFattibilità
pdflatex StudioDiFattibilità.tex -jobname=StudioDiFattibilità_v1.0.0>NUL

cd ..\NormeDiProgetto
pdflatex NormeDiProgetto.tex -jobname=NormeDiProgetto_v1.0.0>NUL

cd ..\Verbali
cd VI_2020_10_27
pdflatex VerbaleInterno -jobname=VI_2020_10_27 >NUL

cd ..\VI_2020_11_10
pdflatex VerbaleInterno -jobname=VI_2020_11_10 >NUL

cd ..\VI_2020_11_26
pdflatex VerbaleInterno -jobname=VI_2020_11_26 >NUL

cd ..\VI_2020_12_14
pdflatex VerbaleInterno -jobname=VI_2020_12_14 >NUL

cd ..\VI_2020_12_20
pdflatex VerbaleInterno -jobname=VI_2020_12_20 >NUL

cd ..\VI_2021_01_07
pdflatex VerbaleInterno -jobname=VI_2021_01_07 >NUL

cd ..\..\..\
echo Compilazione lettera
pdflatex LetteraDiPresentazione >NUL

echo Copio i compilati
copy DocEsterna\AnalisiDeiRequisiti\AnalisiDeiRequisiti_v1.0.0.pdf pdf
copy DocEsterna\PianoDiProgetto\PianoDiProgetto_v1.0.0.pdf pdf
copy DocEsterna\Glossario\Glossario_v1.0.0.pdf pdf
copy DocEsterna\PianoDiQualifica\PianoDiQualifica_v1.0.0.pdf pdf
copy DocEsterna\Verbali\VE_2020_12_17\VE_2020_12_17.pdf pdf
copy DocInterna\StudioDiFattibilità\StudioDiFattibilità_v1.0.0.pdf pdf
copy DocInterna\NormeDiProgetto\NormeDiProgetto_v1.0.0.pdf pdf
copy DocInterna\Verbali\VI_2020_10_27\VI_2020_10_27.pdf pdf
copy DocInterna\Verbali\VI_2020_11_10\VI_2020_11_10.pdf pdf
copy DocInterna\Verbali\VI_2020_11_26\VI_2020_11_26.pdf pdf
copy DocInterna\Verbali\VI_2020_12_14\VI_2020_12_14.pdf pdf
copy DocInterna\Verbali\VI_2020_12_20\VI_2020_12_20.pdf pdf
copy DocInterna\Verbali\VI_2021_01_07\VI_2021_01_07.pdf pdf
copy LetteraDiPresentazione.pdf pdf


echo compilazione terminata
