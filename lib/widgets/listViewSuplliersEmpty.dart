import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListViewSuplliersEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
            Text(
              "Não a nenhum fornecedor cadastrado.\nPara adicionar seu primeiro fornecedor clique no botão '+'",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
