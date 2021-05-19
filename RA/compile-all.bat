echo Compilazione documentazione esterna
cd DocEsterna

cd AnalisiDeiRequisiti
pdflatex AnalisiDeiRequisiti.tex -jobname=AnalisiDeiRequisiti_v4.0.0-1.8>NUL

cd ..\PianoDiProgetto
pdflatex PianoDiProgetto.tex -jobname=PianoDiProgetto_v4.0.0-1.8>NUL

cd ..\PianoDiQualifica
pdflatex PianoDiQualifica.tex -jobname=PianoDiQualifica_v4.0.0-1.8>NUL

cd ..\Glossario
pdflatex Glossario.tex -jobname=Glossario_v4.0.0-1.8>NUL

cd ..\ManualeUtente
pdflatex ManualeUtente.tex -jobname=ManualeUtente_v2.0.0-1.8>NUL

cd ..\ManualeSviluppatore
pdflatex ManualeSviluppatore.tex -jobname=ManualeSviluppatore_v2.0.0-1.8>NUL

cd ..\Verbali

cd VE_2021_03_25 
pdflatex VerbaleEsterno -jobname=VE_2021_03_25 >NUL

cd ..\VE_2021_05_14
pdflatex VerbaleEsterno -jobname=VE_2021_05_14 >NUL

cd ..\VE_2021_04_22
pdflatex VerbaleEsterno -jobname=VE_2021_04_22 >NUL

cd ..\VE_2021_02_05 
pdflatex VerbaleEsterno -jobname=VE_2021_02_05 >NUL

cd ..\VE_2021_02_18
pdflatex VerbaleEsterno -jobname=VE_2021_02_18 >NUL

cd ..\VE_2020_12_17 
pdflatex VerbaleEsterno -jobname=VE_2020_12_17 >NUL

echo Compilazione documentazione interna
cd ..\..\..\DocInterna

cd NormeDiProgetto
pdflatex NormeDiProgetto.tex -jobname=NormeDiProgetto_v4.0.0-1.8>NUL

cd ..\StudioDiFattibilità
pdflatex StudioDiFattibilità.tex -jobname=StudioDiFattibilità_v1.0.0-1.8>NUL

cd ..\Verbali

cd VI_2021_03_10
pdflatex VerbaleInterno -jobname=VI_2021_03_10 >NUL

cd ..\VI_2021_03_16
pdflatex VerbaleInterno -jobname=VI_2021_03_16 >NUL

cd ..\VI_2021_03_24
pdflatex VerbaleInterno -jobname=VI_2021_03_24 >NUL

cd ..\VI_2021_04_10
pdflatex VerbaleInterno -jobname=VI_2021_04_10 >NUL

cd ..\VI_2021_05_03
pdflatex VerbaleInterno -jobname=VI_2021_05_03 >NUL

cd ..\VI_2021_05_15
pdflatex VerbaleInterno -jobname=VI_2021_05_15 >NUL

cd ..\VI_2021_02_08
pdflatex VerbaleInterno -jobname=VI_2021_02_08 >NUL

cd ..\VI_2021_02_17
pdflatex VerbaleInterno -jobname=VI_2021_02_17 >NUL

cd ..\VI_2021_02_23
pdflatex VerbaleInterno -jobname=VI_2021_02_23 >NUL

cd ..\VI_2020_10_27
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
copy DocEsterna\AnalisiDeiRequisiti\AnalisiDeiRequisiti_v4.0.0-1.8.pdf pdf
copy DocEsterna\PianoDiProgetto\PianoDiProgetto_v4.0.0-1.8.pdf pdf
copy DocEsterna\Glossario\Glossario_v4.0.0-1.8.pdf pdf
copy DocEsterna\PianoDiQualifica\PianoDiQualifica_v4.0.0-1.8.pdf pdf
copy DocEsterna\ManualeUtente\ManualeUtente_v2.0.0-1.8.pdf pdf
copy DocEsterna\ManualeSviluppatore\ManualeSviluppatore_v2.0.0-1.8.pdf pdf
copy DocEsterna\PianoDiQualifica\PianoDiQualifica_v4.0.0-1.8.pdf pdf
copy DocEsterna\Verbali\VE_2021_02_05\VE_2021_02_05.pdf pdf
copy DocEsterna\Verbali\VE_2021_02_18\VE_2021_02_18.pdf pdf
copy DocEsterna\Verbali\VE_2021_03_25\VE_2021_03_25.pdf pdf
copy DocEsterna\Verbali\VE_2021_04_22\VE_2021_04_22.pdf pdf
copy DocEsterna\Verbali\VE_2021_05_14\VE_2021_05_14.pdf pdf
copy DocEsterna\Verbali\VE_2020_12_17\VE_2020_12_17.pdf pdf
copy DocInterna\NormeDiProgetto\NormeDiProgetto_v4.0.0-1.8.pdf pdf
copy DocInterna\StudioDiFattibilità\StudioDiFattibilità_v1.0.0-1.8.pdf pdf
copy DocInterna\Verbali\VI_2021_05_03\VI_2021_05_03.pdf pdf
copy DocInterna\Verbali\VI_2021_03_10\VI_2021_03_10.pdf pdf
copy DocInterna\Verbali\VI_2021_03_16\VI_2021_03_16.pdf pdf
copy DocInterna\Verbali\VI_2021_03_24\VI_2021_03_24.pdf pdf
copy DocInterna\Verbali\VI_2021_04_10\VI_2021_04_10.pdf pdf
copy DocInterna\Verbali\VI_2021_02_08\VI_2021_02_08.pdf pdf
copy DocInterna\Verbali\VI_2021_02_17\VI_2021_02_17.pdf pdf
copy DocInterna\Verbali\VI_2021_02_23\VI_2021_02_23.pdf pdf
copy DocInterna\Verbali\VI_2020_10_27\VI_2020_10_27.pdf pdf
copy DocInterna\Verbali\VI_2020_11_10\VI_2020_11_10.pdf pdf
copy DocInterna\Verbali\VI_2020_11_26\VI_2020_11_26.pdf pdf
copy DocInterna\Verbali\VI_2020_12_14\VI_2020_12_14.pdf pdf
copy DocInterna\Verbali\VI_2020_12_20\VI_2020_12_20.pdf pdf
copy DocInterna\Verbali\VI_2021_01_07\VI_2021_01_07.pdf pdf
copy DocInterna\Verbali\VI_2021_05_15\VI_2021_05_15.pdf pdf
copy LetteraDiPresentazione.pdf pdf


echo compilazione terminata
