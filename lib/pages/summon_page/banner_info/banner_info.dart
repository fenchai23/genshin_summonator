import 'package:flutter/material.dart';

class BannerInfo extends StatelessWidget {
  const BannerInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/banners/characters/2021-07-22_The_Herons_Court.jpeg',
                fit: BoxFit.fitWidth,
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.menu))),
              Positioned(
                top: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    child: Text(
                      '0',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    backgroundColor: Colors.black38,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Wrap(
                  spacing: 20,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.navigate_before_rounded,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.navigate_next_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
