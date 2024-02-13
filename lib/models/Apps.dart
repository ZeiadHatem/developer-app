

class Apps {

  final String title , id , price , image , developerBy;
  final List<String> category;
  final List<String> imageApp;
  final List<String> discreption;


  Apps({
    required this.id ,
    required this.title ,
    required this.category ,
    required this.discreption,
    required this.price,
    required this.image,
    required this.imageApp,
    required this.developerBy
});
}