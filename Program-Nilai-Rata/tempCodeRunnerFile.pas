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