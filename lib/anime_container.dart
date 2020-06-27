import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const borderRadius = 15.0;

    return Container(
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 4, // has the effect of softening the shadow
              offset: Offset(
                1.0, // horizontal, move right 10
                1.0, // vertical, move down 10
              ),
            )
          ],
        ),
        padding: const EdgeInsets.all(3.0),
        margin: const EdgeInsets.all(8.0),
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width - 6,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: Image.network(
                'https://3.bp.blogspot.com/--BMm4781O74/WXb8ipUifcI/AAAAAAAABUk/RVpzldOwRtcXpbjjvwEcem5rxmm4Ti6WQCLcBGAs/s1600/Dark%2BAnime%2BGirl%2BWallpaper%2BEngine.jpg',
                fit: BoxFit.cover,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: Container(
                color: Color.fromRGBO(0, 0, 0, 0.5),
              ),
            ),
            Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text('Anime/Manga Title',
                        style: new TextStyle(
                          color: Color.fromRGBO(250, 250, 250, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        )),
                    Text('Anime/Manga Description',
                        style: new TextStyle(
                          color: Color.fromRGBO(250, 250, 250, 0.7),
                          fontSize: 15.0,
                        )),
                  ],
                ))
          ],
        ));
  }
}
