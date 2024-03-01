import 'story.dart';

class StoryBrain {
  List<Story> _storyData = [
    Story(
        storyTitle:
        'Ortasında hiç cep telefonu sinyali olmayan virajlı bir yolda arabanızın bir lastiği patladı. Otostop yapmaya karar veriyorsunuz. Yanınızda paslanmış bir kamyonet duruyor. Gözleri canlı olmayan geniş kenarlı bir şapkalı adam yanınızdaki kapıyı açıyor ve size soruyor: "Bir yolculuk ister misin, oğlan?"',
        choice1: 'Binicem. Yardımın için teşekkürler!',
        choice2: 'Önce onun bir katil olup olmadığını sor.'),
    Story(
        storyTitle: 'Soruya aldırmadan yavaşça başını sallar.',
        choice1: 'En azından dürüst. Binicem.',
        choice2: 'Bekle, bir lastik değiştirmeyi biliyorum.'),
    Story(
        storyTitle:
        'Sürmeye başladığınızda, yabancı annesiyle olan ilişkisinden bahsetmeye başlar. Dakika geçtikçe daha da sinirleniyor. Eldiven kutusunu açmanızı istiyor. İçinde kanlı bir bıçak, iki parçalanmış parmak ve bir Elton John kaset bandı buluyorsunuz. Eldiven gözüne gider.',
        choice1: 'Elton John\'u seviyorum! Ona kaset bandını ver.',
        choice2: 'Ya o ya ben! Bıçağı alıp onu bıçakla.'),
    Story(
        storyTitle:
        'Ne? Böyle bir kaçış! Trafik kazalarının çoğu yetişkin yaş grupları için en yaygın kazara ölüm nedeni olduğunu biliyor muydunuz?',
        choice1: 'Yeniden başla',
        choice2: ''),
    Story(
        storyTitle:
        'Korkulukları parçalayarak ve aşağıdaki sivri kayalıklara doğru hızla ilerlediğinizde, birinin araba sürerken sizin içinde birini bıçaklamasının kuşkulu bilgeliğini düşünüyorsunuz.',
        choice1: 'Yeniden başla',
        choice2: ''),
    Story(
        storyTitle:
        'Katil ile "Can you feel the love tonight" şarkısının dörtlüklerini mırıldanırken aranızda bağ kurarsınız. Sizi bir sonraki kasabaya bırakır. Gitmeden önce size cesetleri atmaya iyi yerler bildiğinizi sorar. "İskeleyi dene" diye yanıtlarsınız.',
        choice1: 'Yeniden başla',
        choice2: '')
  ];


  String? getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String? getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String? getChoice2() {
    return _storyData[_storyNumber].choice2;
  }


  int _storyNumber = 0;

  void nextStory(int choiceNumber) {
    //Kullanıcı story0'dayken ve 1. seçeneği seçtiğinde, hikaye story2'ye ilerlemelidir.
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    }
    else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    //Alternatif olarak (_storyNumber < 3) de kontrol edebilirsiniz.
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
