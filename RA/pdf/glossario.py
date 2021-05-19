import textract
import re
#Faccio una lista con le paroli presenti nel glossario
v = "_v3.0.0-1.7.pdf"
glossx = textract.process("Glossario"+v, method='pdftotext')
glossario = textract.process("Glossario"+v, method='pdftotext').decode("utf-8")
index = glossario.index("Android")-10
glossario = glossario[index:]
glosswords = re.findall(r'\n[\w -]{1,32}[^.]\r\n', glossario)
glosswords += re.findall(r'\n[\w]{1,10}[.][\w]{1,10}\r\n', glossario)
glosswords += re.findall(r'\n\x0c[\w -]{1,32}[^.]\r\n', glossario)
glosswords = list(dict.fromkeys(glosswords))
gloss = []
for glossword in glosswords:
    gloss.append(glossword.lower().strip())
#tutte le parole sono presenti nella lista gloss

docs = ["AnalisiDeiRequisiti"+v, "PianoDiProgetto"+v, "Glossario"+v, "NormeDiProgetto"+v, "PianoDiQualifica"+v]
verbali = ["VI_2021_03_10.pdf", "VI_2021_03_16.pdf", "VI_2021_03_24.pdf", "VI_2021_04_10.pdf", "VE_2021_03_25.pdf", "VE_2021_04_22.pdf"]
scelta = input("Scegli tra \n1: analizza tutti i documenti\n2: analizza tutti i verbali\n3: analizza verbali e documenti\n4: analizza un solo file\nScelta:")
parole = []
if scelta == "1":
    for i in range(len(docs)):
        print(i, docs[i])
        testo = textract.process(docs[i], method='pdftotext').decode('utf8')
        parole += re.findall(r'[\w.-]+[G]\s', testo)
elif scelta == "2":
    for i in range(len(verbali)):
        print(i, verbali[i])
        testo = textract.process(verbali[i], method='pdftotext').decode('utf8')
        parole += re.findall(r'[\w.-]+[G]\s', testo)
elif scelta == "3":
    temp = docs+verbali
    for i in range(len(temp)):
        print(i, temp[i])
        testo = textract.process(temp[i], method='pdftotext').decode('utf8')
        parole += re.findall(r'[\w.-]+[G]\s', testo)
elif scelta =="4":
    nf = input("Digita il nome del PDF di cui vuoi calcolare l'indice di leggibilita': ")
    testo = textract.process(nf, method='pdftotext').decode('utf8')
    parole = re.findall(r'[\w.-]+[G]\s', testo)
else:
    print("Ciao ciao")
#print(gloss)
#print(paroleG)
new_words = []
for word in parole:
    new_words.append(word[:-2].lower())
new_words = list(dict.fromkeys(new_words))
found = notfound = 0
print("########################################################################")
for word in new_words:
    flag=False
    if word in gloss:
        found+=1
    else:
        for itemGloss in gloss:
            if itemGloss.find(word)!=-1 and flag==False:
                #print(word, "trovata come sottostringa")
                found+=1
                flag = True
        if flag == False :
            print(word, "ASSENTE")
            notfound+=1
print("########################################################################")
print("Totale parole descritte in Glossario.pdf", len(gloss))
print("Totale parole con G trovate nel documento: ", len(new_words))
print("Totale parole presenti nel Glossario: ", found)
print("Totale parole assenti nel Glossario: ", notfound)