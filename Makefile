#Makefile

CC = gcc #compileur
CPPFLAGS = -MMD
CFLAGS = -Wall -Wextra -std=c99 -O2 #Flag pour compiler
LDFLAGS =
LDLIBS =
OUT = main  #Nom de sorti
DEBUG = main.dSYM/ #fichier pour debug


SRC = ${wildcard *.c} #tout les fichiers .c
OBJ = ${SRC:.c=.o} 
DEP = ${SRC:.c=.d}

main: ${OBJ}
	$(CC) -o $(OUT) $(OBJ)
	${RM} -r $ ${OBJ} ${DEP}

debug:
	$(CC) -g $(CFLAGS) -o debug $(SRC)

-include ${DEP}

.PHONY: clean

clean:
	${RM} -r $(OUT) $(DEBUG) ${OBJ} ${DEP} ${Result}
