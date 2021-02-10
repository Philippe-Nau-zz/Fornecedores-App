import 'dart:ui';
import 'package:controle_fornecedores/controller/homeController.dart';
import 'package:controle_fornecedores/widgets/MyCircleAvatar.dart';
import 'package:controle_fornecedores/widgets/listViewSuplliers.dart';
import 'package:controle_fornecedores/widgets/listViewSuplliersEmpty.dart';
import 'package:controle_fornecedores/widgets/myButton.dart';
import 'package:controle_fornecedores/widgets/searchInput.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Controle de Fornecedores",
                  ),
                ),
              ),
            ),
            MyCircleAvatar(
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(15, 5, 15, 10),
            color: Theme.of(context).primaryColor,
            child: Row(
              children: [
                SearchInput(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: MyButton(
                    height: 37,
                    width: 37,
                    icon: FontAwesomeIcons.sort,
                    onTap: () {},
                  ),
                ),
                MyButton(
                  height: 37,
                  width: 37,
                  icon: FontAwesomeIcons.slidersH,
                  onTap: () {},
                ),
              ],
            ),
          ),
          1 == 1 ? ListViewSuplliers() : ListViewSuplliersEmpty(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/novo_fornecedor');
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: FaIcon(FontAwesomeIcons.plus),
        tooltip: 'Adicionar Fornecedor',
      ),
    );
  }
}
