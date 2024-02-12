part of '_index.dart';

class LoginCtrl {
  void tambah() {
    _dt.rxHitung.state = _dt.rxHitung.state + 1;
  }

  void kurang() {
    _dt.rxHitung.state = _dt.rxHitung.state - 1;
  }
}
