part of '_index.dart';

class HomeData {
  var rxCounter = 0.inj();

  final rxHitung = RM.inject<int>(
    () => 0,
  );
}
