program penggajianPokok;                                                                                                                                                                                            
uses crt;                                                                                                                                                                                                           
label                                                                                                                                                                                                               
    home, daftar, login, keluar, penggajian, hasil;                                                                                                                                                                 
type                                                                                                                                                                                                                
    inPenggajian = array [1..100] of string;                                                                                                                                                                         
type                                                                                                                                                                                                                
    iniTunjangan = array[1..100] of longint;                                                                                                                                                                        
type                                                                                                                                                                                                                
    iniPajak = array[1..100] of real;                                                                                                                                                                               
type                                                                                                                                                                                                                
    iniGol = array[1..100] of char;                                                                                                                                                                                 
var                                                                                                                                                                                                                 
    gol: iniGol;                                                                                                                                                                                                    
    pajak, toji, persentase, hasilPajak: iniPajak;                                                                                                                                                                              
    namaKaryawan: inPenggajian;                                                                                                                                                                                     
    gapok, transport, makan: iniTunjangan;                                                                                                                                                                          
    namaRes, userRes, passRes, userLog, passLog: string;                                                                                                                                                            
    pil, i: integer;                                                                                                                                                                                                
    ope: char;                                                                                                                                                                                                      
    belumRes: boolean;                                                                                                                                                                                              
begin                                                                                                                                                                                                               
    belumRes := false;                                                                                                                                                                                              
    home:                                                                                                                                                                                                           
        clrscr;                                                                                                                                                                                                     
        textcolor(lightblue);                                                                                                                                                                                       
        writeln('===============================================');                                                                                                                                                 
        gotoxy(19,2);writeln('MENU PROGRAM');                                                                                                                                                                       
        writeln('===============================================');                                                                                                                                                 
        writeln('1. Daftar');                                                                                                                                                                                       
        writeln('2. Login');                                                                                                                                                                                        
        writeln('3. Keluar');                                                                                                                                                                                       
        write('Pilih Menu 1-3: ');                                                                                                                                                                                  
        readln(pil);                                                                                                                                                                                                
        if (pil = 1) then                                                                                                                                                                                           
        begin                                                                                                                                                                                                       
            goto daftar;                                                                                                                                                                                            
        end                                                                                                                                                                                                         
        else if (pil = 2) then                                                                                                                                                                                      
        begin                                                                                                                                                                                                       
            goto login;                                                                                                                                                                                             
        end                                                                                                                                                                                                         
        else if (pil = 3) then                                                                                                                                                                                      
        begin                                                                                                                                                                                                       
            goto keluar;                                                                                                                                                                                            
        end                                                                                                                                                                                                         
        else                                                                                                                                                                                                        
        begin                                                                                                                                                                                                       
            writeln('Pilihan Anda Tidak Valid, Silahkan Input Kembali...(1-3)');                                                                                                                                    
            readln;                                                                                                                                                                                                 
            goto home;                                                                                                                                                                                              
        end;                                                                                                                                                                                                        

    daftar:                                                                                                                                                                                                         
        clrscr;                                                                                                                                                                                                     
        textcolor(lightblue);                                                                                                                                                                                       
        writeln('===============================================');                                                                                                                                                 
        gotoxy(9,2);writeln('MENU ISI PENDAFTARAN DIRI ANDA');                                                                                                                                                      
        writeln('===============================================');                                                                                                                                                 
        textcolor(white);                                                                                                                                                                                           
        write('Masukkan Nama Anda: ');                                                                                                                                                                              
        readln(namaRes);                                                                                                                                                                                            
        write('Masukkan Username Anda: ');                                                                                                                                                                          
        readln(userRes);                                                                                                                                                                                            
        write('Masukan Password Anda: ');                                                                                                                                                                           
        readln(passRes);                                                                                                                                                                                            

        readln;                                                                                                                                                                                                     
        textcolor(lightgreen);                                                                                                                                                                                      
        writeln('Proses Pendaftaran anda Sukses, Silahkan Login..');                                                                                                                                                
        textcolor(yellow);                                                                                                                                                                                          
        writeln('Anda Ingin Login? Tekan Enter untuk Login...');                                                                                                                                                    
        readln;                                                                                                                                                                                                     
        belumRes := true;                                                                                                                                                                                           
        goto home;                                                                                                                                                                                                  

    login:                                                                                                                                                                                                          
        clrscr;                                                                                                                                                                                                     
        textcolor(lightblue);                                                                                                                                                                                       
        writeln('===============================================');                                                                                                                                                 
        gotoxy(20,2);writeln('MENU LOGIN');                                                                                                                                                                         
        writeln('===============================================');                                                                                                                                                 
        textcolor(white);                                                                                                                                                                                           
        write('Masukkan Username Anda: ');                                                                                                                                                                          
        readln(userLog);                                                                                                                                                                                            
        write('Masukkan Password Anda: ');                                                                                                                                                                          
        readln(passLog);                                                                                                                                                                                            

        if (userLog = userRes) and (passLog = passRes) then                                                                                                                                                         
        begin                                                                                                                                                                                                       
            textcolor(lightgreen);                                                                                                                                                                                  
            writeln('Login Sukses!!');                                                                                                                                                                              
            readln;                                                                                                                                                                                                 
            goto penggajian;                                                                                                                                                                                        
        end                                                                                                                                                                                                         
        else if not belumRes then                                                                                                                                                                                   
        begin                                                                                                                                                                                                       
            textcolor(lightred);                                                                                                                                                                                    
            writeln('Mohon Maaf, Akun anda Belum Terdftarkan..');                                                                                                                                                   
            writeln('Anda Ingin Mendaftar Akun? Tekan enter dan Pilih Menu Daftar..');                                                                                                                              
            readln;                                                                                                                                                                                                 
            goto home;                                                                                                                                                                                              
        end;                                                                                                                                                                                                        
        begin                                                                                                                                                                                                       
            textcolor(lightred);                                                                                                                                                                                    
            writeln('Username atau Password Anda Salah!!, Silhkan Masukkan dengan Benar');                                                                                                                          
            readln;                                                                                                                                                                                                 
            goto login;                                                                                                                                                                                             
        end;                                                                                                                                                                                                        

    penggajian:                                                                                                                                                                                                     
        clrscr;                                                                                                                                                                                                     
        textcolor(lightblue);                                                                                                                                                                                       
        writeln('===============================================');                                                                                                                                                 
        gotoxy(12,2);writeln('FORM PROGRAM PENGGAJIAN');                                                                                                                                                            
        writeln('===============================================');                                                                                                                                                 
        writeln;                                                                                                                                                                                                    
        gotoxy(17,4);writeln('Nama: ', namaRes);                                                                                                                                                                    
        writeln;                                                                                                                                                                                                    
        write('MASUKKAN JUMLAH KARYAWAN: ');                                                                                                                                                                        
        readln(i);                                                                                                                                                                                                  
        writeln;                                                                                                                                                                                                    

        for i := 1 to i do                                                                                                                                                                                          
        begin                                                                                                                                                                                                       
			textcolor(white);                                                                                                                                                                                       
            writeln(i,'.', '===============================================');                                                                                                                                                 
            write('Nama: ');                                                                                                                                                                                        
            readln(namaKaryawan[i]);                                                                                                                                                                                
            write('Gol (A-C): ');                                                                                                                                                                                   
            readln(gol[i]);                                                                                                                                                                                         
            write('Tunjangan Transport: ');                                                                                                                                                                         
            readln(transport[i]);                                                                                                                                                                                   
            write('Tunjangan Makan: ');                                                                                                                                                                             
            readln(makan[i]);                                                                                                                                                                                       
			writeln;                                                                                                                                                                                                

            if (gol[i] = 'A') or (gol[i] = 'a') then                                                                                                                                                                
            begin                                                                                                                                                                                                   
                gapok[i] := 5000000;      
                persentase[i] := 0.11;
                hasilPajak[i] := gapok[i] * persentase[i];                                                                                                                                                                                      
                pajak[i] := gapok[i] - hasilPajak[i];                                                                                                                                                  
            end                                                                                                                                                                                                     
            else if (gol = 'B') or (gol[i] = 'b') then                                                                                                                                                              
            begin                                                                                                                                                                                                   
                gapok[i] := 4000000; 
                persentase[i] := 0.11;
                hasilPajak[i] := gapok[i] * persentase[i];                                                                                                                                                                                      
                pajak[i] := gapok[i] - hasilPajak[i];                                                                                                                                                  
            end                                                                                                                                                                                                     
            else if (gol[i] = 'C') or (gol[i] = 'c') then                                                                                                                                                           
            begin                                                                                                                                                                                                   
                gapok[i] := 3500000;            
                persentase[i] := 0.11;
                hasilPajak[i] := gapok[i] * persentase[i];                                                                                                                                                                                      
                pajak[i] := gapok[i] - hasilPajak[i];                                                                                                                                                  
            end;                                                                                                                                                                                                    
            toji[i] := transport[i] + makan[i] + pajak[i];                                                                                                                                                          
        end;                                                                                                                                                                                                        
        textcolor(yellow);                                                                                                                                                                                          
        write('APAKAH DATA PENGGAJIAN YANG DI INPUT SUDAH BENAR (Y/N)? ');                                                                                                                                          
        readln(ope);                                                                                                                                                                                                
        if upcase(ope) = 'Y' then                                                                                                                                                                                   
        begin                                                                                                                                                                                                       
            goto hasil;                                                                                                                                                                                             
        end                                                                                                                                                                                                         
        else if upcase(ope) = 'N' then                                                                                                                                                                              
        begin                                                                                                                                                                                                       
            goto penggajian;                                                                                                                                                                                        
        end;                                                                                                                                                                                                        

    hasil:                                                                                                                                                                                                          
        clrscr;                                                                                                                                                                                                     
        textcolor(lightblue);                                                                                                                                                                                       
        writeln;                                                                                                                                                                                                    
        writeln('========================================================================================'); 
        writeln('|                                   DATA PENGGAJIAN                                     ');                                                                                                       
        writeln('========================================================================================');                                                                                                        
        writeln('========================================================================================');                                                                                                        
        writeln('|   NO. |    NAMA |    GAJI POKOK |    TRANSPORT |    MAKAN |    PAJAK |    TOTAL GAJI |');                                                                                                        
        writeln('========================================================================================');                                                                                                        
        for i := 1 to i do                                                                                                                                                                                          
        begin                                                                                                                                                                                                       
            writeln('| ', i:4, '. | ', namaKaryawan[i]:7, ' ', '| ', gapok[i]:13, ' ', '| ', transport[i]:12, ' ', '| ', makan[i]:8, ' ', '| ', hasilPajak[i]:8:0, ' ', '| ', 'Rp.',toji[i]:10:0, ' |' );
        end;                                                                                                                                                                                                        
        writeln('========================================================================================');   
        textcolor(yellow);       
        write('APAKAH ANDA INGIN MENGULANG PROGRAM INI (Y/N)? ');
        readln(ope);
        if upcase(ope) = 'Y' then
        begin
            goto home;
        end
        else
        begin
            keluar:
            clrscr;
            textcolor(green);
            writeLn('===============================================================');
            gotoxy(25,02);writeln('TERIMAKASIH');
            gotoxy(20,03);writeln('CREATED BY KELOMPOK 3');
            writeLn('===============================================================');
        end;                                                                                    
    readln;                                                                                                                                                                                                     
end.                                                                                                                                                                                                                