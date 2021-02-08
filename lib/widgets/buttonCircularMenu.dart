import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonCircularMenu extends StatelessWidget {
  final IconData icon;
  final String label;

  ButtonCircularMenu({
    @required this.icon,
    @required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        splashColor: Theme.of(context).accentColor.withOpacity(0.1),
        highlightColor: Theme.of(context).accentColor.withOpacity(0.1),
        onTap: () {},
        child: Container(
          width: 90,
          height: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FaIcon(
                this.icon,
                color: Theme.of(context).accentColor,
                size: 30,
              ),
              Text(
                this.label,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
