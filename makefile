CC=gcc

batracios: batracios.c libbatracios.a batracios.h
	$(CC) -m32 batracios.c libbatracios.a batracios.h -o batracios -lm

upload:
	if [ -f *.o ];then make clean; fi
	git add * && git commit -m "Upload!" && clear && git push

clean:
	rm *.o batracios && clear
