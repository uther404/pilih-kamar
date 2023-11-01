class ListKamar {
  String name, detail, description, maxOrang, maxRanjang, roomPrice, imageAsset;
  List<String> imageUrls;

  ListKamar({
    required this.name,
    required this.detail,
    required this.description,
    required this.maxOrang,
    required this.maxRanjang,
    required this.roomPrice,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var listKamarApp = [
  ListKamar(
    name: 'SUPER BIG FAMILY ROOM',
    detail: '4 ranjang, meja, TV',
    description:
        'Super Big Family Room dengan 4 Ranjang adalah sebuah ruangan yang luas dan nyaman yang dirancang khusus untuk keluarga besar atau kelompok yang ingin bersama-sama dalam satu kamar. Ruangan ini memiliki empat ranjang yang tersusun rapi, menciptakan ruang tidur yang nyaman untuk semua anggota keluarga atau tamu Anda. Tampilan ruangan ini sangat mendukung untuk menciptakan atmosfer yang hangat dan bersahaja. Dindingnya dihiasi dengan warna-warna lembut dan dekorasi yang menenangkan. Jendela besar memungkinkan cahaya alami masuk, memberikan nuansa terang dan segar dalam kamar. Selain itu, tirai atau penutup jendela dapat disesuaikan untuk memberikan privasi dan memungkinkan pengaturan pencahayaan yang sesuai.',
    maxOrang: '1 - 8',
    maxRanjang: '4 Bed',
    roomPrice: 'Rp 2.500.000',
    imageAsset: 'images/4-Family-room.jpg',
    imageUrls: [
      'https://images.tokopedia.net/blog-tokopedia-com/uploads/2020/02/4.-Family-room-sumber-gambar-newsaphirhotel.jpg',
      'https://cdn-cms.pgimgs.com/static/2022/04/Alt-Text-7.-Jenis-Kamar-Hotel-Family-Room.png',
      'https://pavilionshotel.com/wp-content/uploads/sites/67/2018/03/8927633.jpg',
    ],
  ),
  ListKamar(
    name: 'BIG FAMILY ROOM',
    detail: '3 ranjang, meja, TV',
    description:
        'Big Family Room dengan 3 Ranjang adalah sebuah ruangan yang luas dan nyaman yang dirancang khusus untuk keluarga besar atau kelompok yang ingin bersama-sama dalam satu kamar. Ruangan ini memiliki tiga ranjang yang tersusun rapi, menciptakan ruang tidur yang nyaman untuk semua anggota keluarga atau tamu Anda. Tampilan ruangan ini sangat mendukung untuk menciptakan atmosfer yang hangat dan bersahaja. Dindingnya dihiasi dengan warna-warna lembut dan dekorasi yang menenangkan. Jendela besar memungkinkan cahaya alami masuk, memberikan nuansa terang dan segar dalam kamar. Selain itu, tirai atau penutup jendela dapat disesuaikan untuk memberikan privasi dan memungkinkan pengaturan pencahayaan yang sesuai.',
    maxOrang: '1 - 6',
    maxRanjang: '3 Bed',
    roomPrice: 'Rp 2.000.000',
    imageAsset: 'images/3-Family-room.jpg',
    imageUrls: [
      'https://content.r9cdn.net/rimg/himg/1b/21/a5/ice-89071988-62200432_3XL-261108.jpg?width=1200&height=630&crop=true',
      'https://www.kokoonhotelsvillas.com/banyuwangi/wp-content/uploads/sites/3/2019/12/Family-Room-3.jpg',
    ],
  ),
  ListKamar(
    name: 'FAMILY ROOM',
    detail: '2 ranjang, meja, TV',
    description:
        'Family Room dengan 2 Ranjang adalah sebuah ruangan yang luas dan nyaman yang dirancang khusus untuk keluarga yang ingin bersama-sama dalam satu kamar. Ruangan ini memiliki dua ranjang yang tersusun rapi, menciptakan ruang tidur yang nyaman untuk semua anggota keluarga atau tamu Anda. Tampilan ruangan ini sangat mendukung untuk menciptakan atmosfer yang hangat dan bersahaja. Dindingnya dihiasi dengan warna-warna lembut dan dekorasi yang menenangkan. Jendela besar memungkinkan cahaya alami masuk, memberikan nuansa terang dan segar dalam kamar. Selain itu, tirai atau penutup jendela dapat disesuaikan untuk memberikan privasi dan memungkinkan pengaturan pencahayaan yang sesuai.',
    maxOrang: '1 - 4',
    maxRanjang: '2 Bed',
    roomPrice: 'Rp 1.500.000',
    imageAsset: 'images/2-Family-room.jpg',
    imageUrls: [
      'https://asset.kompas.com/crops/6z10StWfQT-biXmmAlK51q-rt1A=/0x0:0x0/780x390/data/photo/2016/05/09/1610326IMG-5045780x390.jpg',
      'data:image/jpeg;base64,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',
    ],
  ),
  ListKamar(
    name: 'JUST MARRIED ROOM',
    detail: '1 ranjang, meja, TV',
    description:
        'Just Married Room adalah ruang istimewa dengan 1 ranjang ukuran king size yang dirancang khusus untuk pasangan yang baru menikah atau yang merayakan momen-momen romantis dalam hidup mereka. Kamar ini menciptakan lingkungan yang romantis dan penuh keintiman untuk pasangan yang sedang merayakan pernikahan mereka.Tampilan kamar ini didominasi oleh nuansa romantis dengan dinding dicat dalam warna-warna yang lembut dan dekorasi yang memikat. Lampu redup dan lilin-lilin menghadirkan atmosfer yang hangat dan mengundang. Jendela-jendela besar memungkinkan cahaya alami memasuki kamar, menciptakan suasana terang dan ceria, namun tirai atau penutup jendela dapat disesuaikan untuk memberikan privasi total.',
    maxOrang: '1 - 2',
    maxRanjang: 'Single Bed',
    roomPrice: 'Rp 3.000.000',
    imageAsset: 'images/just-married-room.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/02/21/51/c4/romantic-night.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-s/02/2a/4d/d3/just-married.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6lqwiJfocwSxMlUMThiLtC430qLLgMOQVgF9wmGGHuFr9ns0J2QcqC5KJ-fEdtR4RowI&usqp=CAU',
    ],
  ),
  ListKamar(
    name: 'SOLO ROOM',
    detail: '1 ranjang, meja, TV',
    description:
        'Solo Room adalah tempat yang nyaman dan bersahaja untuk para tamu yang mencari kesantunan dan privasi selama menginap. Ruangan ini didesain dengan perhatian khusus untuk menciptakan lingkungan yang cocok untuk beristirahat dan bersantai. Tampilan kamar ini sederhana namun elegan. Dindingnya dicat dengan warna-warna netral yang menciptakan suasana tenang dan santai. Jendela yang memungkinkan cahaya alami masuk, memberikan kesan cerah dan alami dalam kamar. Tirai atau penutup jendela dapat disesuaikan untuk memberikan privasi dan mengatur tingkat pencahayaan yang diinginkan.',
    maxOrang: '1 - 2',
    maxRanjang: '1 Bed',
    roomPrice: 'Rp Rp 1.000.000',
    imageAsset: 'images/solo-room.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/09/9a/60/f5/hotel-station-18.jpg',
    ],
  ),
  ListKamar(
    name: 'WORKSHOP ROOM',
    detail: '2 ranjang, meja, TV',
    description:
        'Workshop Room adalah tempat yang nyaman dan bersahaja untuk para tamu yang mencari kesantunan dan privasi selama menginap. Ruangan ini didesain dengan perhatian khusus untuk menciptakan lingkungan yang cocok untuk beristirahat dan bersantai. Tampilan kamar ini sederhana namun elegan. Dindingnya dicat dengan warna-warna netral yang menciptakan suasana tenang dan santai. Jendela yang memungkinkan cahaya alami masuk, memberikan kesan cerah dan alami dalam kamar. Tirai atau penutup jendela dapat disesuaikan untuk memberikan privasi dan mengatur tingkat pencahayaan yang diinginkan.',
    maxOrang: '1 - 2',
    maxRanjang: '2 Bed',
    roomPrice: 'Rp Rp 1.300.000',
    imageAsset: 'images/workshop-room.jpg',
    imageUrls: [
      'https://asset.kompas.com/crops/3oakALE_xS7e2bd18MeGlG1QeHw=/0x0:1000x667/750x500/data/photo/2020/01/25/5e2c2d26f3c68.jpg',
    ],
  ),
];
