import 'package:serb/model/Book.dart';
import 'package:serb/model/Offer.dart';
import 'package:serb/model/User.dart';
import 'package:serb/model/price.dart';

List<Offer> listOfOffers = [
  Offer(
      price: Price(10, Currencies.l_e, Durations.Forever),
      book: Book(
        categories: ["Sci-fi","action"],
          title: "A book to remember",
          author: "Random Author",
          cover:
              "https://cdn.pastemagazine.com/www/system/images/photo_albums/best-book-covers-fall-2019/large/bbcdune.jpg?1384968217"),
      isAvailable: true,
      owner: User(
          address: "at the center of the earth",
          firstName: "hamada",
          lastName: "hama",
          phoneNumber: "07775000"),
      state: "new like a new year",
      images: [
        "https://4.bp.blogspot.com/-BD0_cXH3RIs/V0XrYAxpk_I/AAAAAAAACJU/p1XJWTuU7_8ousuCKKyw_ftpQIOL0pCgQCLcB/s1600/books1.jpg"
      ]),
  Offer(
      price: Price(10, Currencies.l_e, Durations.PerDay),
      book: Book(
          title: "Another book to remember",
          author: "Again Random Author",
          cover:
              "https://cdn.pastemagazine.com/www/system/images/photo_albums/best-book-covers-fall-2019/large/bbcdune.jpg?1384968217"),
      isAvailable: true,
      owner: User(
          address: "at the center of the earth",
          firstName: "hamada",
          lastName: "hama",
          phoneNumber: "07775000"),
      state: "used",
      images: [
        "https://4.bp.blogspot.com/-BD0_cXH3RIs/V0XrYAxpk_I/AAAAAAAACJU/p1XJWTuU7_8ousuCKKyw_ftpQIOL0pCgQCLcB/s1600/books1.jpg"
      ]),
  Offer(
      price: Price(20, Currencies.l_e, Durations.PerMonth),
      book: Book(
          title: "Wild light",
          author: "Awsome writer",
          cover:
              "https://static.wixstatic.com/media/9c4410_876c178659774d75aa6d9ec9fadfa4a2~mv2_d_1650_2550_s_2.jpg/v1/fill/w_270,h_412,al_c,q_80,usm_0.66_1.00_0.01/WILD%20LIGHT%20EBOOK.webp"),
      isAvailable: true,
      owner: User(
          address: "at the center of the earth",
          firstName: "hameda",
          lastName: "hama",
          phoneNumber: "08886000"),
      state: "used",
      images: [
        "https://4.bp.blogspot.com/-BD0_cXH3RIs/V0XrYAxpk_I/AAAAAAAACJU/p1XJWTuU7_8ousuCKKyw_ftpQIOL0pCgQCLcB/s1600/books1.jpg"
      ]),

  Offer(
      price: Price(0, Currencies.exchange, Durations.Forever),
      book: Book(
          title: "Another Wild light",
          categories: ["horror"],
          author: "Awsome writer",
          cover:
          "https://static.wixstatic.com/media/9c4410_876c178659774d75aa6d9ec9fadfa4a2~mv2_d_1650_2550_s_2.jpg/v1/fill/w_270,h_412,al_c,q_80,usm_0.66_1.00_0.01/WILD%20LIGHT%20EBOOK.webp"),
      isAvailable: true,
      owner: User(
          address: "at the center of the earth",
          firstName: "hameda",
          lastName: "hama",
          phoneNumber: "08886000"),
      state: "used",
      images: [
        "https://4.bp.blogspot.com/-BD0_cXH3RIs/V0XrYAxpk_I/AAAAAAAACJU/p1XJWTuU7_8ousuCKKyw_ftpQIOL0pCgQCLcB/s1600/books1.jpg"
      ])
];


List<Offer> exploreList = [

  Offer(
      price: Price(0, Currencies.exchange, Durations.Forever),
      book: Book(
          title: "Random book",
          author: "something",
          cover:
          "https://s26162.pcdn.co/wp-content/uploads/2018/12/184224_1326895.794x1200_q95_crop-smart_upscale.jpg",
      categories: ["Sci-fi","Fantasy"]),
      isAvailable: true,
      owner: User(
          address: "at the center of the earth",
          firstName: "hameda",
          lastName: "hama",
          phoneNumber: "08886000"),
      state: "used",
      images: [
        "https://4.bp.blogspot.com/-BD0_cXH3RIs/V0XrYAxpk_I/AAAAAAAACJU/p1XJWTuU7_8ousuCKKyw_ftpQIOL0pCgQCLcB/s1600/books1.jpg"
      ])
];
