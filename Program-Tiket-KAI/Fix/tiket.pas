program pesan_tiket;
uses crt;
type iniArray = array [1..50] of string;
type ituArray = array [1..50] of integer;
type data = array[1..50] of longint;
type hitung = array[1..50] of real;
var tujuan, kelas:ituArray; 
var harga:data;
var htg:hitung;
var nama, nt, nk:iniArray;
var i, jp:integer;
    th: real;
    EksJasu, BisJasu, EkoJasu:integer;
    EksJase, BisJase, EkoJase:integer;
    EksJaba, BisJaba, EkoJaba:integer;

begin
    daftar: 
        clrScr;
        textcolor(lightblue);
        writeLn('===============================================================');
        gotoxy(15,02);writeln('DAFTAR DATA DIRI ANDA DI BAWAH INI');
        writeLn('===============================================================');
        textcolor(white);
        write('Masukkan Nama Anda: ');
        readln(nd);
        write('Masukkan Username Anda: ');
        readln(ud);
        write('Masukkan Password Anda: ');
        readln(pd);
        readln;
        if (nd <> '') and (ud <> '') and (pd <> '') then
        begin
            textcolor(green);
            writeln('Pendaftaran anda sukses, silahkan login!');
            textcolor(white); 
            writeln('Anda ingin login? tekan enter untuk melanjutkan');
            readln;
            goto home;
        end 
        else
        begin
            textcolor(red);
            writeln('Data Anda Masih Kosong, Silahkan di isi Kembali...');
            readln;
            goto daftar;
        end;
        
    daftar: 
        clrScr;
        textcolor(lightblue);
        writeLn('===============================================================');
        gotoxy(15,02);writeln('DAFTAR DATA DIRI ANDA DI BAWAH INI');
        writeLn('===============================================================');
        textcolor(white);
        write('Masukkan Nama Anda: ');
        readln(nd);
        write('Masukkan Username Anda: ');
        readln(ud);
        write('Masukkan Password Anda: ');
        readln(pd);
        readln;
        textcolor(green);
        writeln('Pendaftaran anda sukses, silahkan login!');
        textcolor(white); 
        writeln('Anda ingin login? tekan enter untuk melanjutkan');
        readln;
        belum := true;
        goto home;
    
    login:
        while totalLogin < 3 do 
        begin
            clrscr;
            textcolor(lightblue);
            writeLn('===============================================================');
            gotoxy(18,02);writeln('SILAHKAN LOGIN DI BAWAH INI');
            writeLn('===============================================================');
            textcolor(white);
            write('Masukkan Username Anda: ');
            readln(ul);
            write('Masukkan Password Anda: ');
            readln(pl);
            
            if (ul = ud) and (pl = pd) then 
                begin
                    textcolor(green);
                    writeln('Selamat, Login Sukses!');
                    readln;
                    goto tiket;
                end
            else if not belum then
            begin
                textcolor(red);
                writeln('Maaf Akun Anda Belum Terdaftar. Silakan coba lagi');
                readln;
                goto home;
            end
            else
            begin
                textcolor(red);
                writeln('Yahh, Login Gagal Username atau Password Salah, di Coba Lagi!');
                writeln('Coba Lagi Hingga Batas Maks 3 Kali Percobaan');
                readln;
                totalLogin := totalLogin + 1;
            end;
        end;
        if totalLogin >= 3 then
        begin
            writeln('Yahh, Akun Anda Telah di Blokir');
            writeln('Silahkan Daftar Kembali Akun Anda, tekan enter');
            readln;
            goto home
        end;
    belum := true;
    login:
        while totalLogin < 3 do 
        begin
            clrscr;
            textcolor(lightblue);
            writeLn('===============================================================');
            gotoxy(18,02);writeln('SILAHKAN LOGIN DI BAWAH INI');
            writeLn('===============================================================');
            textcolor(white);
            write('Masukkan Username Anda: ');
            readln(ul);
            write('Masukkan Password Anda: ');
            readln(pl);
            
            if (ul = ud) and (pl = pd) then 
                begin
                    textcolor(green);
                    writeln('Selamat, Login Sukses!');
                    readln;
                    goto tiket;
                end
            else if not belum then
            begin
                textcolor(red);
                writeln('Maaf Akun Anda Belum Terdaftar. Silakan coba lagi');
                readln;
                goto home;
            end
            else
            begin
                textcolor(red);
                writeln('Yahh, Login Gagal Username atau Password Salah, di Coba Lagi!');
                writeln('Coba Lagi Hingga Batas Maks 3 Kali Percobaan');
                readln;
                totalLogin := totalLogin + 1;
            end;
        end;
        if totalLogin >= 3 then
        begin
            writeln('Yahh, Akun Anda Telah di Blokir');
            writeln('Silahkan Daftar Kembali Akun Anda, tekan enter');
            readln;
            goto home
        end;
    clrscr;
    textcolor(3);
    writeln('    ---------------------------------------------------------------');
    writeln('    |      TUJUAN      |   EKSEKUTIF   |   BISNIS   |   EKONOMI   |');
    writeln('    ---------------------------------------------------------------');
    writeln('    |                  |               |            |             |');
    writeln('    |                  |               |            |             |');
    writeln('    |                  |               |            |             |');
    gotoxy(07,04); writeln('Jakarta-Surabaya');
    gotoxy(26,04); writeln('Rp.500.000');
    gotoxy(42,04); writeln('Rp.380.000');
    gotoxy(55,04); writeln('Rp.250.000');
    gotoxy(07,05); writeln('Jakarta-Semarang');
    gotoxy(26,05); writeln('Rp.400.000');
    gotoxy(42,05); writeln('Rp.250.000');
    gotoxy(55,05); writeln('Rp.200.000');
    gotoxy(07,06); writeln('Jakarta-Bandung');
    gotoxy(26,06); writeln('Rp.300.000');
    gotoxy(42,06); writeln('Rp.200.000');
    gotoxy(55,06); writeln('Rp.100.000');
    writeln;
    writeln('------------------------------------');
    writeln('--------- PROGRAM TIKET KAI --------');
    writeln('------------------------------------');
    writeln('            Nama: ');
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
    readln(jp);
    for i := 1 to jp do
        begin
            writeln('Data Penumpang Ke-', i);
            write('Nama Penumpang: '); 
            readln(nama[i]);
            write('Pilih Tujuan 1-3: ');
            readln(tujuan[i]);
            write('Pilih kelas 1-3: ');
            readln(kelas[i]);
            writeln;
        end;
    writeln('----------------------------------------------------------------------------------');
    writeln('                           PROGRAM PENJUALAN TIKET KAI                          ');
    writeln('----------------------------------------------------------------------------------');
    writeln('----------------------------------------------------------------------------------');
    writeln('|  NO.  |      Nama      |       Tujuan       |      Kelas     |      Harga      |');
    writeln('----------------------------------------------------------------------------------');
    th := 0;
    for i := 1 to jp do
    begin       
        if (tujuan[i]=1) and (kelas[i]=1) then
        begin
            harga[i]:=500000;
            nt[i]:='Jakarta-Surabaya';
            nk[i]:='Eksekutif';
        end    
        else if (tujuan[i]=1) and (kelas[i]=2) then
        begin
            harga[i]:=300000;
            nt[i]:='Jakarta-Surabaya';
            nk[i]:='Bisnis';
        end
        else if (tujuan[i]=1) and (kelas[i]=3) then
        begin
            harga[i]:=250000;
            nt[i]:='Jakarta-Surabaya';
            nk[i]:='Ekonomi';
        end
        else if (tujuan[i]=2) and (kelas[i]=1) then
        begin
            harga[i]:=400000;
            nt[i]:='Jakarta-Semarang';
            nk[i]:='Eksekutif';
        end
        else if (tujuan[i]=2) and (kelas[i]=2) then
        begin 
            harga[i]:=250000;
            nt[i]:='Jakarta-Semarang';
            nk[i]:='Bisnis';
        end
        else if (tujuan[i]=2) and (kelas[i]=3) then
        begin
            harga[i]:=200000;
            nt[i]:='Jakarta-Semarang';
            nk[i]:='Ekonomi';
        end
        else if (tujuan[i]=3) and (kelas[i]=1) then
        begin 
            harga[i]:=250000;
            nt[i]:='Jakarta-Bandung';
            nk[i]:='Eksekutif';
        end
        else if (tujuan[i]=3) and (kelas[i]=2) then
        begin 
            harga[i]:=200000;
            nt[i]:='Jakarta-Bandung';
            nk[i]:='Bisnis';
        end
        else if (tujuan[i]=3) and (kelas[i]=3) then
        begin
            harga[i]:=100000;
            nt[i]:='Jakarta-Bandung';
            nk[i]:='Ekonomi';
        end;
        // htg[i] := harga[i] * jp;
        th := th + harga[i];
    end;
    for i := 1 to jp do 
    begin
        writeln('|',i:6, ' |', nama[i]:14, ' ', ' | ', nt[i]:17,' ', ' |', nk[i]:14,' ', ' |', harga[i]:15,' ', ' |');
    end;
    writeln('----------------------------------------------------------------------------------');
    writeln('|       |                |                    |   Total Harga  | ',th:15:0,      ' |');
    writeln('----------------------------------------------------------------------------------');

end.