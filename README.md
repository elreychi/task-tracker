# Task Tracker

## Tujuan
project ini adalah project untuk menambahkan,menghapus,mengubah dan menandai task selesai

## Fitur
addTask, completeTask, editTask, deleteTask 
fungsi masing-masing:
addTask      : untuk menambahkan task
completeTask : untuk menandai task selesai
editTask     : untuk mengubah task
deleteTask   : untuk menghapus tugas


## Cara Menjalankan Test
forge build, forge test


## Catatan Desain
keterbatasan yang saat ini masih ku pahami hanya ; jika menambahkan tugas baru, tugas otomatis menjadi tugas terakhir dan tidak bisa di edit urutan tugasnyadan deleteTask membuat task itu berubah urutannya ; karena memakai swap-and-pop maka isi nomor urutan yang di hapus terganti otomatis dengan isi nomor urutan yang terakhir, misal dalam " a , b , c" kamu ingin hapus b, maka itu akan berubah menjadi c dan jika kamu jadi menghapus maka hanya akan ada " a , c"
