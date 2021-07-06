COMPILER=gcc
FOLDER_SRC=./src
FOLDER_BIN=./bin
FOLDER_DOC=./doc

all:
	$(COMPILER) $(FOLDER_SRC)/tot.c -o $(FOLDER_BIN)/tot
	$(COMPILER) $(FOLDER_SRC)/ctcss.c -o $(FOLDER_BIN)/ctcss

doc:
	mkdir -p $(FOLDER_DOC)
	-$(FOLDER_BIN)/tot > $(FOLDER_DOC)/tot.txt
	echo "\`\`\`" | cat - $(FOLDER_DOC)/tot.txt > $(FOLDER_DOC)/table_tot.md && echo "\`\`\`" >> $(FOLDER_DOC)/table_tot.md && rm $(FOLDER_DOC)/tot.txt
	-$(FOLDER_BIN)/ctcss > $(FOLDER_DOC)/ctcss.txt
	echo "\`\`\`" | cat - $(FOLDER_DOC)/ctcss.txt > $(FOLDER_DOC)/table_ctcss.md && echo "\`\`\`" >> $(FOLDER_DOC)/table_ctcss.md && rm $(FOLDER_DOC)/ctcss.txt
	
