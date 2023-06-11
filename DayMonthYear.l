%option noyywrap
%{
	#include<stdio.h>
	#include"y.tab.h"
%}
%%

("Senin"|"Selasa"|"Rabu"|"Kamis"|"Jumat"|"Sabtu"|"Minggu")"\n" {return Hari; }
([0-9]{1,2})"\n"						{return Tanggal; }
("Januari"|"Februari"|"Maret"|"April"|"Mei"|"Juni"|"Juli"|"Agustus"|"September"|"November"|"Desember")"\n" {return Bulan; }
[0-9]{4} {return Tahun; }

%%