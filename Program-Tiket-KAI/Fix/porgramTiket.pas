Program Tiket;
uses crt;
label 
    awal,akhir;
var
    jp,i:byte;
    np,nk:array[1..50]of string;
    fsl:array[1..50]of char;
    jml,hrg,ttl:array[1..50]of real;
    tot:real;
    lagi:char;
begin
    awal:
    clrscr;
    writeln('================================');
    writeln('     STASIUN HARUS BERHENTI     ');
    writeln('================================');
    write('masukan jumlah pemesan: ');readln(jp);
    for i:=1 to jp do
    begin
        writeln('Data ke- ',i);
        write('Nama Pemesanan : ');
        readln(np[i]);
        write('Nama Kereta : ');
        readln(nk[i]);
        writeln('==================================');
        writeln('      KELAS FASILITAS KERETA      ');
        writeln('==================================');
        writeln('1. VVIP                     ');
        writeln('2. VIP                      ');
        writeln('3. BISNIS                   ');
        writeln('4. EKONOMI                  ');
        writeln('==================================');
        write('Pilih Kelas Fasilitas 1-4: ');
        readln(fsl[i]);
        write('Jumlah Pesan : ');
        readln(jml[i]);
    end;
    writeln('===================================');
    writeln('      STASIUN HARUS BERHENTI      ');
    writeln(' PROGRAM PENJUALAN TIKET KERETA API');
    writeln('===================================');
    writeln('===========================================================================');
    writeln('  NO.   Nama Pemesan   Nama Kereta   Fasilitas   Jumlah Pesan   Harga total');
    tot:=0;
    for i:=1 to jp do
    begin
        if fsl[i]='1' then
            hrg[i]:=200000
        else if fsl[i]='2' then
            hrg[i]:=180000
        else if fsl[i]='3' then
            hrg[i]:=140000
        else 
            hrg[i]:=80000;
        
        ttl[i]:=hrg[i]*jml[i];
        tot:=tot+ttl[i];
    end;
    for i:=1 to jp do
    begin
        writeln(i:1,np[i]:10,nk[i]:12,fsl[i]:15,jml[i]:14:0,hrg[i]:12:0,ttl[i]:10:0);
    end;
    writeln('===========================================================================');
    writeln('total pembayaran: ',tot:9:0);
    writeln('===========================================================================');
    write('Mau input data lagi[Y/T] ? ');readln(lagi);
    if (lagi='Y') or (lagi='Y') then
        goto awal
    else
        goto akhir;
    akhir:
        writeln('Terimakasih');
    readln;
end.
