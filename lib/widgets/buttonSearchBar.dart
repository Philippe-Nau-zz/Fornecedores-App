import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonSearchBar extends StatelessWidget {
  final Function onTap;
  final IconData icon;

  ButtonSearchBar({
    @required this.onTap,
    @required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).accentColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        onTap: this.onTap,
        child: Container(
          width: 37,
          height: 37,
          alignment: Alignment.center,
          child: FaIcon(
            this.icon,
            size: 18,
          ),
        ),
      ),
    );
  }
}
