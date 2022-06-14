import 'package:twitter_ui/model/info.dart';

class ItemService {
  List<Info> getInfos() {
    List<Info> infos = [
      Info(
        'https://cdn.iconscout.com/icon/free/png-256/flutter-2038877-1720090.png',
        'Bharat Singh Negi',
        "Hello! This is twitter ui created using Flutter.",
        'https://tech.pelmorex.com/wp-content/uploads/2020/10/flutter.png',
      ),
      Info(
        'https://image.shutterstock.com/image-vector/user-icon-trendy-flat-style-260nw-1467725033.jpg',
        'Aman',
        'Enjoying Summer',
        'https://image.shutterstock.com/image-photo/blur-beautiful-nature-green-palm-600w-607647752.jpg',
      )
    ];
    return infos;
  }
}
