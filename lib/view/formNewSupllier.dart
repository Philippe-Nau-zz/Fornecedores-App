import 'package:controle_fornecedores/controller/formNewSuplliersController.dart';
import 'package:controle_fornecedores/widgets/myButton.dart';
import 'package:controle_fornecedores/widgets/myTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class FormNewSuplliers extends GetView<FormNewSuplliersController> {
  final DateTime dateNow = DateTime.now();
  final FormNewSuplliersController _controller =
      Get.put(FormNewSuplliersController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Fornecedor'),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${dateNow.day}/${dateNow.month}/${dateNow.year}',
                    style: TextStyle(color: Colors.grey[700], fontSize: 16),
                  ),
                  Text(
                    '${dateNow.hour}:${dateNow.minute}',
                    style: TextStyle(color: Colors.grey[700], fontSize: 16),
                  ),
                ],
              ),
              Divider(
                color: Theme.of(context).primaryColor,
              ),
              Container(
                height: 120,
                child: Obx(
                  () => ListView.builder(
                    itemCount: _controller.personType.length,
                    itemBuilder: (ctx, index) => CheckboxListTile(
                      title: Text(_controller.personType[index].type),
                      value: _controller.personType[index].state,
                      onChanged: (value) =>
                          _controller.personTypeSelect(value, index),
                    ),
                  ),
                ),
              ),
              MyTextFormField(
                labelText: 'Empresa',
                controller: null,
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.text,
              ),
              MyTextFormField(
                labelText: 'Nome',
                controller: null,
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.text,
              ),
              MyTextFormField(
                labelText: 'CPF/CNPJ',
                controller: null,
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.number,
              ),
              Obx(
                () => _controller.isNaturalPerson.value
                    ? MyTextFormField(
                        labelText: 'RG',
                        controller: null,
                        textInputAction: TextInputAction.next,
                        textInputType: TextInputType.number,
                      )
                    : SizedBox(),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: MyTextFormField(
                      labelText: 'Telefone',
                      controller: null,
                      textInputAction: TextInputAction.send,
                      textInputType: TextInputType.phone,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: MyButton(
                      height: 50.5,
                      width: 50.5,
                      icon: FontAwesomeIcons.plus,
                      onTap: () => _controller.addPhones('4444444444444'),
                    ),
                  ),
                ],
              ),
              Obx(
                () => Container(
                  height: _controller.heigthListViewPhones.value,
                  constraints: BoxConstraints(maxHeight: 300),
                  child: ListView.builder(
                    itemCount: _controller.phones.length,
                    itemBuilder: (ctx, index) => Card(
                        child: Container(
                      height: 20,
                      child: Text(
                        _controller.phones[index],
                      ),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
