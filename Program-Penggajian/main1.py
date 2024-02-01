"""
TODO:
Buatlah variabel dictionary dengan nama "data_diri",
variabel tersebut berisi identitas diri Anda berdasarkan ketentuan berikut.
- Memiliki key bernama "firstName":
    - Isi value dengan nama depan Anda, pastikan bertipe data string.
- Memiliki key bernama "lastName":
    - Isi value dengan nama terakhir Anda, pastikan bertipe data string.
- Memiliki key bernama "age":
    - Isi value dengan umur Anda, pastikan bertipe data integer.
- Memiliki key bernama "isMarried":
    - Isi value dengan status pernikahan Anda, pastikan bertipe data boolean.

Catatan:
- Value pada dictionary harus berupa nilai sesungguhnya (literal) seperti string, 
`bilangan bulat (integer), dan boolean (benar atau salah).
"""
data_diri = {
    "firstName": "NamaDepan",  
    "lastName": "NamaBelakang",  
    "age": 25,  
    "isMarried": True 
}


print("Nama Depan:", data_diri["firstName"])
print("Nama Belakang:", data_diri["lastName"])
print("Umur:", data_diri["age"])
print("Status Pernikahan:", data_diri["isMarried"])
