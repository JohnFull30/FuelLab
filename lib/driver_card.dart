import 'package:flutter/material.dart';
import 'driver.dart';

class DriverCard extends StatelessWidget {
  const DriverCard({Key? key, required this.driver}) : super(key: key);

  final Driver driver;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                  driver.driver,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  )
              ),
              const SizedBox(height: 6.0),
              Text(
                  driver.model,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[800],
                  )
              ),
              const SizedBox(height: 8),
              // FlatButton.icon(
              //     onPressed: () {},
              //     label: Text('delete driver'),
              //     icon: Icon(Icons.delete),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}