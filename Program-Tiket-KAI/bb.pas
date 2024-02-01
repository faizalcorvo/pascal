program TiketKAI;
uses crt;
type
pengguna = record
    username: string;
    password: string;
end;

dataTiket = record
    kode: integer;
    nama: string;
    tujuan: string;
    kelas: string;
    harga: integer;
end;

const
    jumlahPengguna = 1;
    penggunaA: array [1..jumlahPengguna] of pengguna = (
        (username: 'Admin'; password: 'admin'));

    jumlahTiket = 3;
    dataTiketA: array [1..jumlahTiket] of dataTiket = 
    (
        (kode: 1; nama: 'Jakarta-Surabaya'; tujuan: 'A'; kelas: 'Eksekutif'; harga: 500000),
        (kode: 2; nama: 'Jakarta-Semarang'; tujuan: 'B'; kelas: 'Bisnis'; harga: 400000),
        (kode: 3; nama: 'Jakarta-Bandung'; tujuan: 'C'; kelas: 'Ekonomi'; harga: 300000)
    );

var
    username, password: string;
    pilih: integer;
    i, j, totalHarga: integer;
    namaPenumpang, kelasPenumpang: string;
    jumlahPenumpang: integer;

begin
    clrscr;
    write('Username: ');
    readln(username);
    write('Password: ');
    readln(password);

    i := 1;
    while (i <= jumlahPengguna) and (not (username = penggunaA[i].username) and (password = penggunaA[i].password)) do
        i := i + 1;

    if i <= jumlahPengguna then
    begin
        writeln('Login Sukses');

        repeat
        writeln('Menu Login Program Tiket KAI');
        writeln('1. Kelola Data Tiket');
        writeln('2. Keluar');
        write('Pilih menu: ');
        readln(pilih);

        case pilih of
            1:
            begin
            writeln('1. Daftar Tiket');
            writeln('2. Tambah Tiket');
            writeln('3. Ubah Tiket');
            writeln('4. Hapus Tiket');
            write('Pilih submenu: ');
            readln(pilih);

            case pilih of
                1:
                begin
                writeln('Daftar Tiket:');
                writeln('Kode | Nama Tiket | Tujuan | Kelas | Harga');
                for i := 1 to jumlahTiket do
                begin
                    write(dataTiketA[i].kode, ' | ', dataTiketA[i].nama, ' | ', dataTiketA[i].tujuan, ' | ', dataTiketA[i].kelas, ' | ', dataTiketA[i].harga);
                    writeln;
                end;
                end;

                2:
                begin
                writeln('Masukkan data tiket baru:');
                write('Kode: ');
                readln(j);
                write('Nama: ');
                readln(dataTiketA[j].nama);
                write('Tujuan: ');
                readln(dataTiketA[j].tujuan);
                write('Kelas: ');
                readln(dataTiketA[j].kelas);
                write('Harga: ');
                readln(dataTiketA[j].harga);
                end;

                3:
                begin
                writeln('Masukkan kode tiket yang ingin diubah: ');
                readln(j);
                writeln('Masukkan data tiket baru:');
                write('Nama: ');
                readln(dataTiketA[j].nama);
                write('Tujuan: ');
                readln(dataTiketA[j].tujuan);
                write('Kelas: ');
                readln(dataTiketA[j].kelas);
                write('Harga: ');
                readln(dataTiketA[j].harga);
                end;

                4:
                begin
                writeln('Masukkan kode tiket yang ingin dihapus: ');
                readln(j);
                dataTiketA[j] := dataTiketA[jumlahTiket];
                jumlahTiket := jumlahTiket - 1;
                end;
            end;
            end;

            2: break;
        end;
        until false;

        writeln('Terima kasih telah menggunakan program Tiket KAI');
    end
    else
        writeln('Username atau password salah');
    readln;
end.
