program pesan_tiket;
uses crt;
type iniArray = array [1..100] of string;
type ituArray = array [1..100] of integer;
type data = array[1..100] of longint;
var tujuan,kelas:ituArray; 
var harga:data;
var nama:iniArray;
var i:integer;
    EksJasu,BisJasu,EkoJasu:integer;
    EksJase,BisJase,EkoJase:integer;
    EksJaba,BisJaba,EkoJaba:integer;

begin
    clrscr;
    writeln('Program Tiket KAI');
    writeln('nama: ');
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
    write('MASUKKAN JUMLAH PENUMPANG: ');readln(i);
    for i:=1 to i do
        begin
            write('Nama Penumpang: '); readln(nama[i]);
            write('Pilih Tujuan: ');readln(tujuan[i]);
            write('Pilih kelas: ');readln(kelas[i]);
            writeln;
        end;
    if (tujuan[i]=1) and (kelas[i]=1) then
        harga[i]:=500000;
    if (tujuan[i]=1) and (kelas[i]=2) then
        harga[i]:=300000;
    if (tujuan[i]=1) and (kelas[i]=3) then
        harga[i]:=250000;
    if (tujuan[i]=2) and (kelas[i]=1) then
        harga[i]:=400000;
    if (tujuan[i]=2) and (kelas[i]=2) then
        harga[i]:=250000;
    if (tujuan[i]=2) and (kelas[i]=3) then
        harga[i]:=200000;
    if (tujuan[i]=3) and (kelas[i]=1) then
        harga[i]:=250000;
    if (tujuan[i]=3) and (kelas[i]=2) then
        harga[i]:=200000;
    if (tujuan[i]=3) and (kelas[i]=3) then
        harga[i]:=100000;
    
    writeln(harga[i],' ');

end.