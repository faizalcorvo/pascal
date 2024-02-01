program pesan_tiket;
uses crt;
type iniArray = array [1..100] of string;
type ituArray = array [1..100] of Byte;
type uang = array[1..100] of LongInt;
var otu,okel:ituArray;
var harga:uang;
var tujuan,kelas,namaP:iniArray;

var total:LongInt;
var op:char;
var i:integer;
var nama:string;
label tiket,hasil;

begin
	tiket:
    clrscr;
	textcolor(3);
    writeln('===============================================================');
    writeln('|      TUJUAN      |   EKSEKUTIF   |   BISNIS   |   EKONOMI   |');
    writeln('===============================================================');
    writeln('|                  |               |            |             |');
    writeln('|                  |               |            |             |');
    writeln('|                  |               |            |             |');
    writeln('===============================================================');
    writeln('Jakarta-Surabaya');
    gotoxy(03,04); writeln('Jakarta-Surabaya');
    gotoxy(24,04); writeln('Rp.500.000');
    gotoxy(38,04); writeln('Rp.380.000');
    gotoxy(52,04); writeln('Rp.250.000');
    gotoxy(03,05); writeln('Jakarta-Semarang');
    gotoxy(24,05); writeln('Rp.400.000');
    gotoxy(38,05); writeln('Rp.250.000');
    gotoxy(52,05); writeln('Rp.200.000');
    gotoxy(04,06); writeln('Jakarta-Bandung');
    gotoxy(24,06); writeln('Rp.300.000');
    gotoxy(38,06); writeln('Rp.200.000');
    gotoxy(52,06); writeln('Rp.100.000');
    writeln;
    writeLn('===============================================================');
    gotoxy(24,9);writeLn('MENU TIKET KERETA');
    writeLn('===============================================================');
    writeln('Hallo ',nama,' !!!!! Selamat Datang Di Menu Tiket KAI');
    writeln;
    writeln('Tujuan: ');
    writeln('1. Jakarta-Surabaya');
    writeln('2. Jakarta-Semarang');
    writeln('3. Jakarta-Bandung');
    writeln;
    writeln('Kelas: ');
    writeln('1. Eksekutif');
    writeln('2. Bisnis');
    writeln('3. Ekonomi');
    writeln;
    write('MASUKKAN JUMLAH PENUMPANG: ');
	readln(i);
	writeln;

	total:=0;
    for i:=1 to i do
        begin
	writeLn(i,'.============================================================');
    write('Nama Penumpang: ');
		readln(namaP[i]);
    write('Pilih Tujuan: ');
		readln(otu[i]);
    write('Pilih kelas: ');
		readln(okel[i]);
        writeln;
        case (otu[i]) of 1: 
            if (okel[i]=1) then
            begin
				harga[i]:=500000;
				tujuan[i]:='Jakarta - Surabaya';
				kelas[i]:='Eksekutif';
			end
			else if (okel[i]=2) then
            begin
                harga[i]:=300000;
                tujuan[i]:='Jakarta - Surabaya';
				kelas[i]:='Bisnis';
			end
			else if (okel[i]=3) then
			begin
				harga[i]:=250000;
				tujuan[i]:='Jakarta - Surabaya';
				kelas[i]:='Ekonomi';
            end;
		end;
		case (otu[i]) of 2:
            if (okel[i]=1) then
			begin
                harga[i]:=400000;
                tujuan[i]:='Jakarta - Semarang';
				kelas[i]:='Eksekutif';
			end
			else if (okel[i]=2) then
			begin
				harga[i]:=250000;
				tujuan[i]:='Jakarta - Semarang';
				kelas[i]:='Bisnis';
			end
			else if (okel[i]=3) then
			begin
				harga[i]:=200000;
				tujuan[i]:='Jakarta - Semarang';
				kelas[i]:='Ekonomi';
            end;
        end;
        case (otu[i]) of 3:
            if (okel[i]=1) then
            begin
                harga[i]:=300000;
                tujuan[i]:='Jakarta - Bandung ';
                kelas[i]:='Eksekutif';
            end
            else if (okel[i]=2) then
            begin
                harga[i]:=200000;
                tujuan[i]:='Jakarta - Bandung ';
                kelas[i]:='Bisnis';
            end
            else If (okel[i]=3) then
            begin
                harga[i]:=100000;
                tujuan[i]:='Jakarta - Bandung ';
                kelas[i]:='Ekonomi';
            end;
        end;
        total:=total+harga[i];
			end;
	write('APAKAH DATA YANG DIMASUKKAN SUDAH BENAR (Y/N)? '); Readln(op);
		if upcase(op) = 'N' then
		begin
			goto tiket;
		end
		else if upcase(op)='Y' then
		begin
			goto hasil;
		end;

	hasil:
    ClrScr;
    writeln('==================================================================================');
    writeln('|                           PROGRAM PENJUALAN TIKET KAI                          |');
    writeln('==================================================================================');
    writeln('|  NO.  |      NAMA      |       TUJUAN       |      KELAS     |      HARGA      |');
    writeln('==================================================================================');
		for i:=1 to i do
			begin
            writeln('|',i:6, ' |', namaP[i]:14, ' ', ' | ', tujuan[i]:17,' ', '|', kelas[i]:14,' ', ' |', harga[i]:15,' ', ' |');
			end;
    writeln('==================================================================================');
    writeln('|       |                |                    |  TOTAL HARGA   |',total:15,      '  |');
    writeln('==================================================================================');
end.