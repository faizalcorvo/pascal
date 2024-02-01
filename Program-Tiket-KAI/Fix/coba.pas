program pesan_tiketKai;
uses crt;
label 
    tiket, hasil, loadingscreen, daftar, login, home, keluar;
type 
    iniArray = array [1..100] of string;
type 
    ituArray = array [1..100] of byte;
type 
    uang = array[1..100] of longint;
var 
    otu ,okel: ituArray;
    tujuan,kelas,namaP: iniArray;
    harga: uang;
    total: longint;
    op: char;
    belum: boolean;
    nd, ud, pd, pl, ul: string;
    totalLogin, pil, i, a: integer;
begin
    totalLogin := 0;
    belum := false;
    
    loadingscreen:
        clrScr;
        textcolor(green);
        writeLn('=========================================');
        delay(150);
        gotoxy(12,3);write('S');
        delay(150);
        gotoxy(12,3);write('SE');
        delay(150);
        gotoxy(12,3);write('SEL');
        delay(150);
        gotoxy(12,3);write('SELA');
        delay(150);
        gotoxy(12,3);write('SELAM');
        delay(150);
        gotoxy(12,3);write('SELAMA');
        delay(150);
        gotoxy(12,3);write('SELAMAT');
        delay(150);
        gotoxy(12,3);write('SELAMAT DA');
        delay(150);
        gotoxy(12,3);write('SELAMAT DAT');
        delay(150);
        gotoxy(12,3);write('SELAMAT DATA');
        delay(150);
        gotoxy(12,3);write('SELAMAT DATAN');
        delay(150);
        gotoxy(12,3);write('SELAMAT DATANG.');
        delay(150);
        gotoxy(12,3);write('SELAMAT DATANG..');
        delay(150);
        gotoxy(12,3);write('SELAMAT DATANG..!');
        delay(150);
        gotoxy(12,3);write('SELAMAT DATANG..!!');
        delay(150);
        gotoxy(18,5);write('D');
        delay(150);
        gotoxy(18,5);write('DI');
        delay(150);
        gotoxy(7,7);write('A');
        delay(150);
        gotoxy(7,7);write('AP');
        delay(150);
        gotoxy(7,7);write('APL');
        delay(150);
        gotoxy(7,7);write('APLI');
        delay(150);
        gotoxy(7,7);write('APLIKA');
        delay(150);
        gotoxy(7,7);write('APLIKAS');
        delay(150);
        gotoxy(7,7);write('APLIKASI P');
        delay(150);
        gotoxy(7,7);write('APLIKASI PE');
        delay(150);
        gotoxy(7,7);write('APLIKASI PEM');
        delay(150);
        gotoxy(7,7);write('APLIKASI PEME');
        delay(150);
        gotoxy(7,7);write('APLIKASI PEMES');
        delay(150);
        gotoxy(7,7);write('APLIKASI PEMESA');
        delay(150);
        gotoxy(7,7);write('APLIKASI PEMESAN');
        delay(150);
        gotoxy(7,7);write('APLIKASI PEMESANA');
        delay(150);
        gotoxy(7,7);write('APLIKASI PEMESANAN');
        delay(150);
        gotoxy(7,7);write('APLIKASI PEMESANAN T');
        delay(150);
        gotoxy(7,7);write('APLIKASI PEMESANAN TI');
        delay(150);
        gotoxy(7,7);write('APLIKASI PEMESANAN TIK');
        delay(150);
        gotoxy(7,7);write('APLIKASI PEMESANAN TIKE');
        delay(150);
        gotoxy(7,7);write('APLIKASI PEMESANAN TIKET');
        delay(150);
        gotoxy(7,7);write('APLIKASI PEMESANAN TIKET K');
        delay(150);
        gotoxy(7,7);write('APLIKASI PEMESANAN TIKET KA');
        delay(150);
        gotoxy(7,7);write('APLIKASI PEMESANAN TIKET KAI');
        delay(150);
        gotoxy(10,9);write('C');
        delay(150);
        gotoxy(10,9);write('CR');
        delay(150);
        gotoxy(10,9);write('CRE');
        delay(150);
        gotoxy(10,9);write('CREA');
        delay(150);
        gotoxy(10,9);write('CREAT');
        delay(150);
        gotoxy(10,9);write('CREATE');
        delay(150);
        gotoxy(10,9);write('CREATED');
        delay(150);
        gotoxy(10,9);write('CREATED B');
        delay(150);
        gotoxy(10,9);write('CREATED BY');
        delay(150);
        gotoxy(10,9);write('CREATED BY K');
        delay(150);
        gotoxy(10,9);write('CREATED BY KE');
        delay(150);
        gotoxy(10,9);write('CREATED BY KEL');
        delay(150);
        gotoxy(10,9);write('CREATED BY KELO');
        delay(150);
        gotoxy(10,9);write('CREATED BY KELOM');
        delay(150);
        gotoxy(10,9);write('CREATED BY KELOMP');
        delay(150);
        gotoxy(10,9);write('CREATED BY KELOMPO');
        delay(150);
        gotoxy(10,9);write('CREATED BY KELOMPOK');
        delay(150);
        gotoxy(10,9);write('CREATED BY KELOMPOK 5');
        delay(150);
        gotoxy(1,11);writeLn('=========================================');
        gotoxy(3,12);write('LOADING: ');
        delay(400);
        for i := 12 to 40 do
        begin
            gotoxy(i,12);
            write('.'); 
            delay(70);
        end;

    home:
        clrscr;
        textcolor(lightblue);
        writeLn('===============================================================');
        gotoxy(21,02);writeln('MENU PROGRAM TIKET KAI');
        writeLn('===============================================================');
        writeln('1. Daftar');
        writeln('2. Login');
        writeln('3. Keluar');
        write('Pilih Menu 1-3 ? ');
        readln(pil);
        if pil = 1 then
        begin
            goto daftar;
        end
        else if pil = 2 then
        begin
            goto login;
        end
        else if pil = 3 then 
        begin
            goto keluar;
        end
        else
        begin
            textcolor(red);
            writeLn('Maaf Pilihan Anda Tidak Ada! Silakan Coba Lagi Tekan Enter...(1-3)');
            readln;
            goto home;
        end;

    daftar:
        clrScr;
        textcolor(lightblue);
        writeln('===============================================================');
        gotoxy(15,2);writeln('DAFTAR DATA DIRI ANDA DI BAWAH INI');
        writeln('===============================================================');
        textcolor(white);
        write('Masukkan Nama Anda: ');
        readln(nd);
        if nd = '' then
        begin
            textcolor(red);
            writeln('Nama Anda belum terisi. Isi kembali nama Anda.');
            readln;
            clrScr;
            textcolor(lightblue);
            writeln('===============================================================');
            gotoxy(15,2);writeln('DAFTAR DATA DIRI ANDA DI BAWAH INI');
            writeln('===============================================================');
            textcolor(white);
            write('Masukkan Nama Anda: ');
            readln(nd);
        end;
        write('Masukkan Username Anda: ');
        readln(ud);
        if ud = '' then
        begin
            textcolor(red);
            writeln('Username Anda belum terisi. Isi kembali username Anda.');
            readln;
            clrScr;
            textcolor(lightblue);
            writeln('===============================================================');
            gotoxy(15,2);writeln('DAFTAR DATA DIRI ANDA DI BAWAH INI');
            writeln('===============================================================');
            textcolor(white);
            writeln('Masukkan Nama Anda: ', nd);
            write('Masukkan Username Anda: ');
            readln(ud);
        end;
        write('Masukkan Password Anda: ');
        readln(pd);
        if pd = '' then
        begin
            textcolor(red);
            writeln('Password Anda belum terisi. Isi kembali password Anda.');
            readln;
            clrScr;
            textcolor(lightblue);
            writeln('===============================================================');
            gotoxy(15,2);writeln('DAFTAR DATA DIRI ANDA DI BAWAH INI');
            writeln('===============================================================');
            textcolor(white);
            writeln('Masukkan Nama Anda: ', nd);
            writeln('Masukkan Username Anda: ', ud);
            write('Masukkan Password Anda: ');
            readln(pd);
        end;
        readln;
        textcolor(green);
        writeln('Pendaftaran anda sukses, silahkan login!');
        textcolor(white);
        writeln('Anda ingin login? Tekan enter untuk melanjutkan');
        readln;
        belum := true;
        goto home;

    login:
        while totalLogin < 3 do
        begin
            clrscr;
            textcolor(lightblue);
            writeln('===============================================================');
            gotoxy(18, 2);
            writeln('SILAHKAN LOGIN DI BAWAH INI');
            writeln('===============================================================');
            textcolor(white);
            write('Masukkan Username Anda: ');
            readln(ul);
            if ul = '' then
            begin
                textcolor(red);
                writeln('Username Anda belum terisi. Isi kembali username Anda.');
                readln;
                clrscr;
                textcolor(lightblue);
                writeln('===============================================================');
                gotoxy(18, 2);
                writeln('SILAHKAN LOGIN DI BAWAH INI');
                writeln('===============================================================');
                textcolor(white);
                write('Masukkan Username Anda: ');
                readln(ul);
            end;
            write('Masukkan Password Anda: ');
            readln(pl);
            if pl = '' then
            begin
                textcolor(red);
                writeln('Password Anda belum terisi. Isi kembali password Anda.');
                readln;
                clrscr;
                textcolor(lightblue);
                writeln('===============================================================');
                gotoxy(18, 2);
                writeln('SILAHKAN LOGIN DI BAWAH INI');
                writeln('===============================================================');
                textcolor(white);
                writeln('Masukkan Username Anda: ', ul);
                write('Masukkan Password Anda: ');
                readln(pl);
            end;
            if (ul = ud) and (pl = pd) then
            begin
                textcolor(green);
                writeln('Selamat, Login Sukses!');
                readln;
                goto tiket;
                totalLogin := 0;
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
            textcolor(red);
            writeln('Yahh, Akun Anda Telah di Blokir');
            writeln('Silahkan Daftar Kembali Akun Anda, tekan enter');
            readln;
            goto home;
        end;

    tiket:
        clrscr;
        textcolor(lightblue);
        writeln('===============================================================');
        writeln('|      TUJUAN      |   EKSEKUTIF   |   BISNIS   |   EKONOMI   |');
        writeln('===============================================================');
        writeln('|                  |               |            |             |');
        writeln('|                  |               |            |             |');
        writeln('|                  |               |            |             |');
        writeln('===============================================================');
        gotoxy(03,04); writeln('Jakarta-Surabaya');
        gotoxy(24,04); writeln('Rp.500.000');
        gotoxy(38,04); writeln('Rp.380.000');
        gotoxy(52,04); writeln('Rp.250.000');
        gotoxy(03,05); writeln('Jakarta-Semarang');
        gotoxy(24,05); writeln('Rp.300.000');
        gotoxy(38,05); writeln('Rp.250.000');
        gotoxy(52,05); writeln('Rp.200.000');
        gotoxy(03,06); writeln('Jakarta-Bandung');
        gotoxy(24,06); writeln('Rp.300.000');
        gotoxy(38,06); writeln('Rp.200.000');
        gotoxy(52,06); writeln('Rp.100.000');
        writeln;
        writeLn('===============================================================');
        gotoxy(24,09);writeLn('MENU TIKET KERETA');
        writeLn('===============================================================');
        writeln('Hallo ',nd,' !!!!! Selamat Datang Di Menu Tiket KAI');
        writeln;
        textcolor(white);
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
                        harga[i]:=300000;
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
            textcolor(yellow);
            write('APAKAH DATA YANG DIMASUKKAN SUDAH BENAR (y/n)? '); 
            readln(op);
            if upcase(op) = 'N' then
            begin
                goto tiket;
            end
            else if upcase(op)='Y' then
            begin
                goto hasil;
            end;

	hasil:
        clrScr;
        textcolor(green);
        writeLn('=========================================');
        gotoxy(15,3);writeln('TUNGGU SEBENTAR');
        gotoxy(1,5);writeLn('=========================================');
        gotoxy(4,6); write('LOADING: ');
        for a := 14 to 40 do
        begin
            gotoxy(a,6); 
            write('.');
            delay(60);
        end;
        writeln;
        clrScr;
        textcolor(lightblue);
        writeln;
        writeln('==================================================================================');
        writeln('|                             PEMBELIAN TIKET KAI ANDA                           |');
        writeln('==================================================================================');
        writeln('|  NO.  |      NAMA      |       TUJUAN       |      KELAS     |      HARGA      |');
        writeln('==================================================================================');
            for i:=1 to i do
                begin
                writeln('|',i:5, '. |', namaP[i]:14, ' ', ' | ', tujuan[i]:17,' ', '|', kelas[i]:14,' ', ' |', ' Rp.',harga[i]:12, ' |');
                end;
        writeln('==================================================================================');
        writeln('|       |                |                    |  TOTAL HARGA   |',' Rp.',total:12,      ' |');
        writeln('==================================================================================');
        textcolor(yellow);
        write('APAKAH ANDA INGIN MENGULANG PROGRAM INI (y/n)? ');
        readln(op);
        if upcase(op) = 'Y' then 
        begin
            goto loadingscreen;
        end
        else
        begin
            keluar:
            clrScr;
            textcolor(green);
            writeLn('===============================================================');
            gotoxy(10,02);writeln('TERIMKASAIH TELAH MEMBELI TIKET KAI DI KAMI');
            gotoxy(20,03);writeln('CREATED BY KELOMPOK 5');
            writeLn('===============================================================');
        end;
    readln;
end.