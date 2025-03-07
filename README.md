# [Game Development Tutorial 4](https://csui-game-development.github.io/tutorials/tutorial-4/)

### Latihan Mandiri: Membuat Level Baru Dengan Tile Map & Obstacle Berbeda
  **Langkah-langkah proses pembuatan level baru.**   
1. Scene untuk level baru  
   - Buat scene baru dengan root node tipe `Node2D`
   - Tambahkan scene Player ke level baru tersebut
2. Menambahkan Tilemap  
   - Membuat TileMapLayer baru dengan asset Spritesheets yang berbeda dengan level sebelumnya
   - Pasang spritesheet_gr_grass.png ke tileset
   - Ubah ukuran tile menjadi 128x128
   - Buat collision shape untuk tiap bentuk tile
   - Gambar level dengan tileset baru
3. Menambahkan Node untuk WinTrigger  
   - Menambahkan Sprite dengan gambar flagblue2.png
   - Menambahkan AreaTrigger dalam Sprite
   - Scene name tujuan pada Area diganti menjadi WinScreen
4. Menambahkan LoseTrigger  
   - LoseTrigger ditambahkan di area bawah, ketika player jatuh ke bawah
   - Spawner juga mempunyai LoseTrigger
5. Menambahkan Spawner  
   - Duplikasi scene `FallingFish` dengan nama `Fireball`
   - Ganti Sprite dalam scene menjadi fireball.png
   - Ganti nama scene menjadi `Fireball`
   - Tambahkan scene `Fireball` ke dalam Spawner

### Menambah Restart Button untuk Lose dan Win Screen
1. Menambah child node `Button` pada scene LoseScreen dan WinScreen
2. Menambah script `restart_button.gd` pada Button
3. Menambah signal `pressed` pada Button
4. Pada WinScreen, terdapat `Quit` button yang langsung keluar dari game