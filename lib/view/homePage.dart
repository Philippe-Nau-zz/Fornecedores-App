import 'dart:ui';

import 'package:controle_fornecedores/widgets/MyCircleAvatar.dart';
import 'package:controle_fornecedores/widgets/buttonCircularMenu.dart';
import 'package:controle_fornecedores/widgets/buttonSearchBar.dart';
import 'package:controle_fornecedores/widgets/searchInput.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3E3E3),
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Controle de Fornecedores"),
            MyCircleAvatar(
              onTap: () {},
            )
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
                  child: ButtonSearchBar(
                    icon: FontAwesomeIcons.sort,
                    onTap: () {},
                  ),
                ),
                ButtonSearchBar(
                  icon: FontAwesomeIcons.slidersH,
                  onTap: () {},
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Fornecedores',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.grey[800],
                  ),
                ),
                ButtonSearchBar(
                  icon: FontAwesomeIcons.userPlus,
                  onTap: () {},
                )
              ],
            ),
          ),
          Divider(
            height: 2,
            thickness: 1,
            endIndent: 15,
            indent: 15,
            color: Theme.of(context).primaryColor,
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) => Container(
                  height: 50,
                  color: index % 2 == 0 ? Color(0xFFE3E3E3) : Color(0xFFE9E9E9),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Builder(
        builder: (context) => FabCircularMenu(
          alignment: Alignment.bottomRight,
          ringColor: Theme.of(context).accentColor.withAlpha(30),
          ringDiameter: 370.0,
          ringWidth: 120.0,
          fabSize: 64.0,
          fabElevation: 8.0,
          fabIconBorder: CircleBorder(),
          fabColor: Theme.of(context).accentColor,
          fabOpenIcon: Icon(FontAwesomeIcons.bars, color: Colors.white),
          fabCloseIcon: Icon(FontAwesomeIcons.times, color: Colors.white),
          fabMargin: const EdgeInsets.all(15.0),
          animationDuration: const Duration(milliseconds: 600),
          animationCurve: Curves.easeInOutCirc,
          children: <Widget>[
            ButtonCircularMenu(
                icon: FontAwesomeIcons.shareAlt, label: 'Compartilhar'),
            ButtonCircularMenu(
                icon: FontAwesomeIcons.solidFilePdf, label: 'PDF'),
            ButtonCircularMenu(
                icon: FontAwesomeIcons.solidFileExcel, label: 'Planilha'),
          ],
        ),
      ),
    );
  }
}
