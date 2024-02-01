program tiket_kai;
uses crt;
label
    home, menu, daftar, login, keluar;
var 
    ulg: char; 
    nd, ud, ul: string;
    totalLogin, pil, pd, pl, i: integer;
begin
    totalLogin := 0;
    home:
    clrScr;
    textcolor(lightgreen);
    delay(1200);
    gotoxy(12,3);write('SELAMAT DATANG..!!');
    delay(1200);
    gotoxy(18,5);writeln('DI');
    delay(1200);
    gotoxy(7,7);write('APLIKASI PEMESANAN TIKET KAI');
    delay(1200);
    gotoxy(10,9);writeln('CREATED BY KELOMPOK 5');
    delay(1200);
    gotoxy(3,12);write('LOADING: ');
    delay(500);
    for i := 15 to 35 do
    begin
        gotoxy(i,12);
        write('=');
        delay(100);
    end;
    menu:
    clrscr;
    textcolor(blue);
    writeln('------------------------------------');
    writeln('------ MENU PROGRAM TIKET KAI ------');
    writeln('------------------------------------');
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
    end;

    daftar: 
        textcolor(lightblue);
        writeln('----------------------------------------------------');
        writeln('-------- DAFTAR DATA DIRI ANDA DI BAWAH INI --------');
        writeln('----------------------------------------------------');
        textcolor(white);
        write('Masukkan Nama Anda: ');
        readln(nd);
        write('Masukkan Username Anda: ');
        readln(ud);
        write('Masukkan Password Anda: ');
        readln(pd);
        readln;
        textcolor(lightblue);
        writeln('Pendaftaran anda sukses, silahkan login!');
        textcolor(white);
        writeln('Anda ingin login? tekan enter untuk melanjutkan');
        readln;
        goto menu;
    
    login:
        while totalLogin < 3 do 
        begin
            clrscr;
            textcolor(lightblue);
            writeln('---------------------------------------------');
            writeln('-------- SILAHKAN LOGIN DI BAWAH INI --------');
            writeln('---------------------------------------------');
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
        end;

    write('Apakah anda ingin mengulang program ini? (y/n) ');
    readln(ulg);
    ulg := 'Y';
    if upcase(ulg) = 'Y' then 
    begin
        goto menu;
    end
    else
    begin
        keluar:
        writeln('-------- TERIMKASIH TELAH MENGGUNAKAN PROGRAM INI --------');
    end;
end.