import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_America': {
          'hello': 'Hello',
        },
        'urdu_Pakistan': {
          'hello': 'con cac',
        },
        'arabic_Saudi Arabia': {
          'hello': 'con ku',
        },
      };
}
