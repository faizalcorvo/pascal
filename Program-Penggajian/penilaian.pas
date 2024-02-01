program HitungRataRata;

type
    Pengguna = record
        Nama, Username, Password: string;
        NilaiBI, NilaiKomputer, NilaiAgama: real;
    end;

var
    dataPengguna: array of Pengguna;
    pilihanMenu, indeksLogin: integer;

    function HitungRataRata(pengguna: Pengguna): real;
    begin
        // Menghitung rata-rata nilai
        HitungRataRata := (pengguna.NilaiKomputer + pengguna.NilaiAgama + pengguna.NilaiBI) / 3;
    end;

    function HitungGrade(rataRata: real): string;
    begin
        // Menentukan grade berdasarkan rata-rata nilai
        if (rataRata >= 85) and (rataRata <= 100) then
            HitungGrade := 'A'
        else if (rataRata >= 70) and (rataRata <= 84) then
            HitungGrade := 'B'
        else if (rataRata >= 60) and (rataRata <= 69) then
            HitungGrade := 'C'
        else if (rataRata >= 50) and (rataRata <= 59) then
            HitungGrade := 'D'
        else if (rataRata >= 0) and (rataRata <= 49) then
            HitungGrade := 'E'
        else
            HitungGrade := 'Angka tidak valid';
    end;

    procedure TampilkanTabelRataRata;
    var
        i: integer;
    begin
        if length(dataPengguna) = 0 then
        begin
            writeln('Belum ada data pengguna. Silakan daftar terlebih dahulu.');
            writeln; // Baris baru kosong
            Exit;
        end;
        writeln('================================================================================');
        writeln('|  No  |  Nama          |  BI   |  Komputer  |  Agama  |  Rata-rata  |  Grade  |');
        writeln('================================================================================');
        for i := 1 to length(dataPengguna) - 1 do
        begin
            // Tampilkan hanya jika bukan pengguna yang login
            if i <> indeksLogin then
            begin
            write('|', i + 1:5, ' |', dataPengguna[i].Nama:15, ' |', dataPengguna[i].NilaiBI:6:2, ' |', dataPengguna[i].NilaiKomputer:11:2,
                ' |', dataPengguna[i].NilaiAgama:8:2, ' |', HitungRataRata(dataPengguna[i]):12:2, ' |', HitungGrade(HitungRataRata(dataPengguna[i])):8, ' |');
            writeln;
            end;
        end;
        writeln('================================================================================');
        writeln; // Baris baru kosong
    end;

    procedure TampilMenu;
    begin
        writeln('============== Menu ==============');
        writeln('1. Daftar');
        writeln('2. Login');
        writeln('3. Keluar');
        writeln('===================================');
    end;

    procedure DaftarPengguna;
    var
        newPengguna: Pengguna;
    begin
        writeln('===== Daftar Pengguna Baru =====');
        write('Nama: ');
        readln(newPengguna.Nama);
        write('Username: ');
        readln(newPengguna.Username);
        write('Password: ');
        readln(newPengguna.Password);

        SetLength(dataPengguna, length(dataPengguna) + 1);
        dataPengguna[length(dataPengguna) - 1] := newPengguna;

        writeln('Pendaftaran berhasil!');
    end;

    function CekLogin(username, password: string): boolean;
    var
        i: integer;
    begin
        for i := 0 to length(dataPengguna) - 1 do
        begin
            if (dataPengguna[i].Username = username) and (dataPengguna[i].Password = password) then
            begin
            indeksLogin := i; // Simpan indeks pengguna yang login
            CekLogin := true;
            Exit;
            end;
        end;
        indeksLogin := -1; // Reset indeks login jika tidak ada yang cocok
        CekLogin := false;
    end;

    procedure Login;
    var
        inputUsername, inputPassword: string;
        loginBerhasil: boolean;
    begin
        repeat
            writeln('===== Login =====');
            write('Username: ');
            readln(inputUsername);
            write('Password: ');
            readln(inputPassword);

            loginBerhasil := CekLogin(inputUsername, inputPassword);

            if loginBerhasil then
            writeln('Login berhasil!')
            else
            writeln('Login gagal, Username atau password salah. Silakan coba lagi!');

        until loginBerhasil;
        // Jika login berhasil, lanjutkan dengan input nilai
        writeln;
        TampilkanTabelRataRata;
        writeln;
    end;

    procedure InputNilai;
    var
        inputUsername: string;
        jumlahData, i: integer;
    begin
        writeln('===== Program Tiket Menghitung Rata-rata=====');
        write('Masukkan jumlah data yang ingin diinput: ');
        readln(jumlahData);

        // Validasi jumlah data harus lebih dari 0
        while jumlahData <= 0 do
        begin
            writeln('Jumlah data harus lebih dari 0. Silakan masukkan kembali.');
            write('Masukkan jumlah data yang ingin diinput: ');
            readln(jumlahData);
        end;

        // Loop untuk memasukkan data sejumlah yang diinginkan
        for i := 1 to jumlahData do
        begin
            // Cari pengguna dengan username yang sesuai
            for i := 0 to length(dataPengguna) - 1 do
            begin
                // Memasukkan nilai untuk Bahasa Indonesia
                write('Nilai Bahasa Indonesia: ');
                readln(dataPengguna[i].NilaiBI);    
                // Memasukkan nilai untuk Komputer
                write('Nilai Komputer: ');
                readln(dataPengguna[i].NilaiKomputer);  
                // Memasukkan nilai untuk Agama
                write('Nilai Agama: ');
                readln(dataPengguna[i].NilaiAgama); 
                writeln('Input nilai berhasil!');
                writeln;
                Exit;
            end;
            writeln('Username tidak ditemukan. Input nilai gagal.');
        end;
    end;

    begin
    repeat
        TampilMenu;
        write('Pilih menu (1-3): ');
        readln(pilihanMenu);

        case pilihanMenu of
        1:
            begin
            DaftarPengguna;
            writeln;
            end;
        2:
            begin
            Login;
            writeln;
            InputNilai;
            writeln;
            TampilkanTabelRataRata;
            writeln;
            end;
        3:
            writeln('Terima kasih! Sampai jumpa lagi.');
        else
            writeln('Pilihan tidak valid. Silakan pilih kembali.');
        end;

    until pilihanMenu = 3; // Program akan berjalan sampai pengguna memilih keluar (menu 4).
end.