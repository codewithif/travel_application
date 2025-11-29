 import 'package:travel_application/home/models/place_model.dart';

final List<PlaceModel> placesData = [
  PlaceModel(
    name: "Mount Fuji",
    location: "Honshu, Japan",
    img: [
      "https://plus.unsplash.com/premium_photo-1661964177687-57387c2cbd14?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8TW91bnQlMjBGdWppfGVufDB8fDB8fHww",
      "https://images.unsplash.com/photo-1490806843957-31f4c9a91c65?auto=format&fit=crop&w=800&q=80",
      "https://images.unsplash.com/photo-1579586326694-874e466d71b3?auto=format&fit=crop&w=800&q=80",
      "https://images.unsplash.com/photo-1685607619502-70973b89c496?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fE1vdW50JTIwRnVqaXxlbnwwfHwwfHx8MA%3D%3D",
    ],
    rating: 4.8,
    reviews: 1240,
    description: "Japan's highest mountain, an active volcano that last erupted in 1707. It is one of Japan's 'Three Holy Mountains' and a cultural icon.",
    price: 350,
  ),
  PlaceModel(
    name: "Santorini Island",
    location: "Santorini, Greece",
    img: [
      "https://images.unsplash.com/photo-1627960683692-263a750170a4?auto=format&fit=crop&w=800&q=80",
      "https://plus.unsplash.com/premium_photo-1661963145672-a2bd28eba0fb?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8U2FudG9yaW5pJTIwSXNsYW5kfGVufDB8fDB8fHww",
      "https://images.unsplash.com/photo-1582967657984-7e50338781d4?auto=format&fit=crop&w=800&q=80",
      "https://images.unsplash.com/photo-1578495537581-2c94380a08fe?auto=format&fit=crop&w=800&q=80",
    ],
    rating: 4.9,
    reviews: 3200,
    description: "Famous for its whitewashed cubic buildings, blue-domed churches, and stunning sunsets over the caldera.",
    price: 520,
  ),
  PlaceModel(
    name: "Cappadocia",
    location: "Anatolia, Turkey",
    img: [
      "https://images.unsplash.com/photo-1641128324972-af3212f0f6bd?auto=format&fit=crop&w=800&q=80",
     "https://plus.unsplash.com/premium_photo-1661939093765-62f3ebaef09b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8Q2FwcGFkb2NpYXxlbnwwfHwwfHx8MA%3D%3D" ,
      "https://images.unsplash.com/photo-1691156550450-e2099ed3ac55?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fENhcHBhZG9jaWF8ZW58MHx8MHx8fDA%3D",
      "https://plus.unsplash.com/premium_photo-1661963652315-d5a9d26637dd?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8Q2FwcGFkb2NpYXxlbnwwfHwwfHx8MA%3D%3D"
    ],
    rating: 4.7,
    reviews: 890,
    description: "Known for its distinctive 'fairy chimneys,' tall, cone-shaped rock formations, and magical hot air balloon rides at sunrise.",
    price: 280,
  ),
  PlaceModel(
    name: "Bora Bora",
    location: "French Polynesia",
    img: [
      "https://images.unsplash.com/photo-1537905569824-f89f14cceb68?auto=format&fit=crop&w=800&q=80",
      "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&w=800&q=80",
      "https://images.unsplash.com/photo-1589806036187-fcbc6a7a23b6?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8RnJlbmNoJTIwUG9seW5lc2lhfGVufDB8fDB8fHww",
      "https://images.unsplash.com/photo-1618272180148-f004c3dc857d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8RnJlbmNoJTIwUG9seW5lc2lhfGVufDB8fDB8fHww"
    ],
    rating: 4.9,
    reviews: 1500,
    description: "A small South Pacific island northwest of Tahiti, popular for its luxury resorts and turquoise lagoon protected by a coral reef.",
    price: 850,
  ),
  PlaceModel(
    name: "Eiffel Tower",
    location: "Paris, France",
    img: [
      "https://images.unsplash.com/photo-1610981109245-c3f748c98ad2?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8RWlmZmVsJTIwVG93ZXxlbnwwfHwwfHx8MA%3D%3D",
      "https://images.unsplash.com/photo-1637200607633-1ee0cc951569?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fEVpZmZlbCUyMFRvd2V8ZW58MHx8MHx8fDA%3D",
      "https://images.unsplash.com/photo-1659003505996-d5d7ca66bb25?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fEVpZmZlbCUyMFRvd2V8ZW58MHx8MHx8fDA%3D",

      "https://images.unsplash.com/photo-1565881606991-789a8dff9dbb?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8RWlmZmVsJTIwVG93ZXJ8ZW58MHx8MHx8fDA%3D",


    ],
    rating: 4.6,
    reviews: 5400,
    description: "The City of Light's most recognizable landmark. Enjoy a romantic evening with breathtaking views of the Parisian skyline.",
    price: 400,
  ),
  PlaceModel(
    name: "Bali Swing",
    location: "Bali, Indonesia",
    img: [
      "https://images.unsplash.com/photo-1537996194471-e657df975ab4?auto=format&fit=crop&w=800&q=80",
     "https://images.unsplash.com/photo-1554481924-0eecea3f21de?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8QmFsaSUyMFN3aW5nfGVufDB8fDB8fHww" ,
      "https://plus.unsplash.com/premium_photo-1682097702864-b9a9ae179776?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8QmFsaSUyMFN3aW5nfGVufDB8fDB8fHww"
      ,"https://images.unsplash.com/photo-1521728508045-38ead677fd43?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fEJhbGklMjBTd2luZ3xlbnwwfHwwfHx8MA%3D%3D"
      ,
    ],
    rating: 4.7,
    reviews: 2100,
    description: "Experience the thrill of swinging over lush green rice terraces and tropical jungles in the cultural heart of Indonesia.",
    price: 220,
  ),

  PlaceModel(
    name: "Grand Canyon",
    location: "Arizona, USA",
    img: [
      "https://images.unsplash.com/photo-1507205187121-bb5c76c72195?auto=format&fit=crop&w=800&q=80",
      "https://images.unsplash.com/photo-1527333656061-ca7adf608ae1?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8R3JhbmQlMjBDYW55b258ZW58MHx8MHx8fDA%3D",
      "https://images.unsplash.com/photo-1501426026938-164993f1ac76?auto=format&fit=crop&w=800&q=80",
      "https://images.unsplash.com/photo-1582305596395-5028972e2726?auto=format&fit=crop&w=800&q=80",
    ],
    rating: 4.8,
    reviews: 4100,
    description: "A steep-sided canyon carved by the Colorado River, known for its overwhelming size and its intricate and colorful landscape.",
    price: 300,
  ),
];