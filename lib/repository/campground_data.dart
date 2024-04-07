import '../bloc/campground.dart';

List<Campground> campgrounds = [
  Campground(
    name: 'Oeschinen Lake Campground',
    location: 'Kandersteg, Switzerland',
    description: 
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the '            
      'Bernese Alps. Situated 1,578 meters above sea level, it '            
      'is one of the larger Alpine Lakes. A gondola ride from '            
      'Kandersteg, followed by a half-hour walk through pastures '            
      'and pine forest, leads you to the lake, which warms to 20 '            
      'degrees Celsius in the summer. Activities enjoyed here '            
      'include rowing, and riding the summer toboggan run.',
    imageLocation: 'assets/images/swiss_campground.jpg',
    rating: 4.5,
  ),
  Campground(
    name: 'Banff National Park Campground',
    location: 'Alberta, Canada',
    description: 
      'Banff National Park is Canada\'s oldest national park, '            
      'established in 1885 in the Rocky Mountains. The park, '            
      'located 110–180 kilometers west of Calgary in the province '            
      'of Alberta, encompasses 6,641 square kilometers of mountainous '            
      'terrain, with numerous glaciers and ice fields, dense '            
      'forests, and alpine landscapes. The Icefields Parkway extends '            
      'from Lake Louise, connecting to Jasper National Park in '            
      'the north. Provincial forests and Yoho National Park are '            
      'neighbors to the west, while Kootenay National Park is '            
      'located to the south and Kananaskis Country to the southeast.',
    imageLocation: 'assets/images/banff_campground.jpg',
    rating: 4.7,
  ),
];