# Panduan deploy ASP WEB API ke Heroku

1. Buat ASP Web api template di Visual studio community
2. Checklist opsi docker linux
3. Edit Dockerfile
    - hapus `ENTRYPOINT ["dotnet", "WebApiSampleSesi14AndSesi15.dll"]`
    - tambahkan `CMD ASPNETCORE_URLS=http://*:$PORT dotnet WebApiSampleSesi14AndSesi15.dll`
    - `WebApiSampleSesi14AndSesi15.dll` sesuaikan masing-masing project
4. Tambahkan heroku.yml di root project
5. Tambahkan code dibawah ini di heroku.yml
```python
build:
  docker:
    web: Dockerfile 
```
6. Buat app di heroku
7. Ubah tipe app heroku dari stack ke container dengan CLI `heroku stack:set container --app <nama_app>`
8. Push project yang dibuat di visual studio community ke github repository
9. Deploy app heroku menggunakan project yang sudah dipush di github
10. Done

# Keuntungan
1. Tidak perlu build container di local komputer karena nanti di heroku otomatis dibuatkan container **(recommended untuk pc atau laptop kentang)**
2. Irit kuota, karena hanya 1 kali push di github



