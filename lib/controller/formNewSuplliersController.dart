import 'package:controle_fornecedores/model/typePerson.dart';
import 'package:get/get.dart';

class FormNewSuplliersController extends GetxController {
  final RxList<TypePerson> personType = [
    TypePerson(state: true, type: 'Pessoa Jurídica'),
    TypePerson(state: false, type: 'Pessoa Fisíca'),
  ].obs;

  final RxList phones = [].obs;
  final RxBool isNaturalPerson = false.obs;

  RxDouble heigthListViewPhones = 0.0.obs;

  personTypeSelect(bool value, int index) {
    for (var i = 0; i < personType.length; i++) {
      if (i == index)
        personType[index].state = true;
      else
        personType[i].state = false;

      if (personType[i].type == 'Pessoa Fisíca' && personType[i].state)
        isNaturalPerson.value = true;
      else
        isNaturalPerson.value = false;
      personType.refresh();
    }
  }

  addPhones(String phoneNumber) {
    phones.add(phoneNumber);
    heigthListViewPhones.value = heigthListViewPhones.value + 30;
  }
}
