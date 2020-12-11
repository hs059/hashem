
import 'package:flutter_app/value/string.dart';

class InteressenModel {
  String img ;
  String title ;
  InteressenModel({this.title,this.img});
}
List<InteressenModel> allInteressen = [
  InteressenModel(title: 'kochen',img: kochenImg,),
  InteressenModel(title: 'wein',img: weinImg,),
  InteressenModel(title: 'lesen',img: lesenImg,),

  InteressenModel(title: 'reisen',img: reisenImg,),
  InteressenModel(title: 'kunst',img: kunstImg,),
  InteressenModel(title: 'musik',img: musikImg,),
  InteressenModel(title: 'radsport',img: radsportImg,),
  InteressenModel(title: 'wandern',img: wandernImg,),
];




// String radsportImg = 'assets/images/radsport.png';
// String wandernImg = 'assets/images/wandern.png';
// String weinImg = 'assets/images/wein.png';
