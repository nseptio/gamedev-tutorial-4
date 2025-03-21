# [Game Development Tutorial 6](https://csui-game-development.github.io/tutorials/tutorial-6/)

## Latihan Mandiri: Fitur Tambahan
1. Tombol pada layar game over untuk kembali ke menu utama.
   1. Menambahkan child node `LinkButton` pada `GameOver.tscn`.
   2. Attach script yang sama seperti pada `LinkButton` pada `MainMenu.tscn`.
   3. Menambahkan signal `on_pressed` pada `LinkButton`
   4. Ubah nilai variabel `scene_to_load` pada tab inspector menjadi `MainMenu`
2. Fitur Select Stage 
   1. Buat scene baru dengan nama `LevelSelect.tscn` dengan cara duplicate scene `MainMenu.tscn`.
   2. Menambahkan child node `LinkButton` untuk level 1, level 2, dan tombol kembali ke menu utama.
   3. Attach script yang sama seperti pada `LinkButton` pada `MainMenu.tscn` untuk tiap tombol.
   4. Menambahkan signal `on_pressed` pada `LinkButton`.
   5. Ubah nilai variabel `scene_to_load` pada tab inspector menjadi `Level1`, `Level2`, dan `MainMenu` sesuai dengan tombol terkait.
3. Layar dan efek transisi antar level, dari level 1 ke level 2.
   1. Buat scene baru dengan nama `Transition.tscn` dengan root node `CanvasLayer`.
   2. Menambahkan child node `ColorRect` pada `Transition.tscn`.
   3. Menambahkan child node `AnimationPlayer` pada `Transition.tscn`.
   4. Membuat animasi `fade_in_out` pada `AnimationPlayer` selama 1 detik.
   5. Membuat keyframe pada animasi `fade_in_out` dengan nilai visible `true` pada frame 0 dan visible `false` pada frame 1, nilai `modulate` pada frame 0 adalah 0 dan nilai `modulate` pada frame 1 adalah 1, dan 1 tambahan keyframe di tengah untuk transisi fade in dan fade out.
   