import 'package:intl/intl.dart';

class HumanFormats {
  //si lo creo como statick significa que no es necesario que cree una instancia
  //para poder acceder a uno de sus metodos

  static String humanReadbleNumber(double number) {
    final formatterNumer = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);

    return formatterNumer;
  }
}
