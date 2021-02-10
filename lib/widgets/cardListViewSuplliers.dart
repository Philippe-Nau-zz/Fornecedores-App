import 'package:flutter/material.dart';

class CardListViewSuplliers extends StatelessWidget {
  final EdgeInsetsGeometry margin;

  CardListViewSuplliers({
    @required this.margin,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: this.margin,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        splashColor: Theme.of(context).accentColor.withOpacity(0.1),
        highlightColor: Theme.of(context).accentColor.withOpacity(0.1),
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  Expanded(
                    child: Container(
                      child: Text(
                        'Jose carvalho de abreu pinto',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                  ),
                  Text('10/10/2010'),
                ],
              ),
              Divider(
                color: Theme.of(context).accentColor,
                indent: 0,
                endIndent: 0,
                thickness: 1,
                height: 8,
              ),
              Text(
                'Blumenau - SC',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              Text(
                '(00) 9999-9999',
                style: TextStyle(
                  fontSize: 16,
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
