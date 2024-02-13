
import 'package:developer/models/Apps.dart';

import '../models/Category_Data.dart';

const categories = const [
  CategoryData(
      imageUrl: 'https://scooboo.in/cdn/shop/products/kalp-notes-pb-notebooknotebooks-notepadskalpscooboo-kpb008695896127860-174314.jpg?v=1678431493&width=1800',
      id: 'c1',
      categoryName: 'Notes Apps'
  ),
  
  CategoryData(
      imageUrl: 'https://img.freepik.com/premium-photo/travel-poster-that-says-vision-it_579873-2574.jpg?size=626&ext=jpg&ga=GA1.1.82398450.1679408353&semt=sph',
      id: 'c2',
      categoryName: 'Tourism Apps'
  ),

  CategoryData(
      imageUrl: 'https://i.pinimg.com/736x/73/02/8d/73028d393987ddee199c677df10ed5dd.jpg',
      id: 'c3',
      categoryName: 'Travels Apps'
  ),

  CategoryData(
      imageUrl: 'https://img.freepik.com/free-photo/business-women-signature-document_1388-90.jpg?size=626&ext=jpg&ga=GA1.1.82398450.1679408353&semt=sph',
      id: 'c4',
      categoryName: 'Messages Apps'
  ),

  CategoryData(
      imageUrl: 'https://exploretauranga.co.nz/wp-content/uploads/2020/02/Tauranga-Shopping.png',
      id: 'c5',
      categoryName: "Ecomerces Apps"
  )
];


List<Apps> appsList = [
  Apps(
      id: 'a1',
      title: 'Awsome Notes',
      category: ['c1'],
      discreption: [
        'v0.1 The first version of the program, The program makes it much easier for people, It helps in solving many problems',

      ],
      price: '1000',
      image: 'tools/images/ToDo.jpeg',
      developerBy: 'Zeiad Hatem',
      imageApp: [
        'tools/images/asomenotesPicture/asomenote1.png',
        'tools/images/asomenotesPicture/asomenote2.png',
        'tools/images/asomenotesPicture/asomenote3.png'
      ]
  ),

  Apps(
      id: 'a2',
      title: 'FitClub',
      category: ['c4'],
      discreption: [
        'v0.1 The first version of the program, The program makes it much easier for people, It helps in solving many problems',
      ],
      price: '1500',
      image: 'tools/images/fitclubapp.jpg',
      developerBy: "Zeiad Hatem",
      imageApp: ['tools/images/fitclubPicture/fitclub1.jpg','tools/images/fitclubPicture/fitclub2.jpg']
  ),

  Apps(
      id: 'a3',
      title: 'Tawsella',
      category: ['c3'],
      discreption: [
        'v0.1 The first version of the program, The program makes it much easier for people, It helps in solving many problems',
      ],
      price: '3000',
      image: 'tools/images/Tawsella.png',
      developerBy: "Zeiad Hatem",
      imageApp: [
        'tools/images/tawsellaPicture/tawsella1.jpg',
        'tools/images/tawsellaPicture/taswella2.jpg',
        'tools/images/tawsellaPicture/taswella3.jpg'
      ]
  ),

  Apps(
      id: 'a4',
      title: 'Tourism',
      category: ['c2'],
      discreption: [
        'v0.1 The first version of the program, The program makes it much easier for people, It helps in solving many problems',
      ],
      price: '2000',
      image: 'tools/images/tourism.png',
      developerBy: "Zeiad Hatem",
      imageApp: [
        'tools/images/tourismPicture/tourism1.jpg',
        'tools/images/tourismPicture/tourism2.jpg',
        'tools/images/tourismPicture/tourism3.jpg',
        'tools/images/tourismPicture/tourism4.jpg',
        'tools/images/tourismPicture/tourism5.jpg',
        'tools/images/tourismPicture/tourism6.jpg',
        'tools/images/tourismPicture/tourism7.jpg'
      ]
  ),

  Apps(
      id: 'a5',
      title: 'Shatably App',
      category: ['c5'],
      discreption: [
        'v0.1 The first version of the program, The program makes it much easier for people, It helps in solving many problems',
      ],
      price: '5000',
      image: 'tools/images/ShatablyApp.png',
      developerBy: "Zeiad Hatem",
      imageApp: [
        'tools/images/shatablyPicture/shatably1.jpg',
        'tools/images/shatablyPicture/shatably2.jpg',
        'tools/images/shatablyPicture/shatably3.jpg',
        'tools/images/shatablyPicture/shatably4.jpg',
        'tools/images/shatablyPicture/shatably5.jpg',
        'tools/images/shatablyPicture/shatably6.jpg',
        'tools/images/shatablyPicture/shatably7.jpg',
        'tools/images/shatablyPicture/shatably8.jpg'
      ]
  ),

  Apps(
      id: 'a6',
      title: 'Notes',
      category: ['c1'],
      discreption: [
        'v0.1 The first version of the program, The program makes it much easier for people, It helps in solving many problems',
      ],
      price: '950',
      image: 'tools/images/notes.png',
      developerBy: "Zeiad Hatem",
      imageApp: [
        'tools/images/notesPicture/notes1.jpg',
        'tools/images/notesPicture/notes2.jpg'
      ]
  )
];