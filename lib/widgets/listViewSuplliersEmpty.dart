import 'package:controle_fornecedores/view/formNewSupllier.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ListViewSuplliersEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => Get.toNamed('/novo_fornecedor'),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.userPlus,
                size: 80,
                color: Colors.grey[700],
              ),
              SizedBox(height: 8),
              Text(
                "Não a nenhum fornecedor cadastrado.\nPara adicionar seu primeiro fornecedor clique aqui ou no botão '+'",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
