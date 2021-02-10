import 'package:controle_fornecedores/widgets/cardListViewSuplliers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListViewSuplliers extends StatelessWidget {
  final _item = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Container(
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
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.ellipsisV,
                          color: Theme.of(context).accentColor,
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 2,
                  thickness: 1,
                  color: Theme.of(context).primaryColor,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: ListView.builder(
                itemCount: _item.length,
                itemBuilder: (BuildContext context, int index) {
                  bool last = _item.length == (index + 1);
                  return CardListViewSuplliers(
                    margin: last
                        ? EdgeInsets.fromLTRB(15, 0, 15, 80)
                        : EdgeInsets.fromLTRB(15, 0, 15, 10),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
