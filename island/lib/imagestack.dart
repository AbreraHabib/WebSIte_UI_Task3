import 'package:flutter/material.dart';

class ImageStack extends StatelessWidget {
  ImageStack({required this.imageName, required this.numrate});
  final String imageName;
  final String numrate;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage('images/$imageName'), fit: BoxFit.fill)),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(180, 30, 50, 120),
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(255, 41, 39, 39).withOpacity(0.5),
            ),
            child: Center(
              child: Text(
                numrate,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
