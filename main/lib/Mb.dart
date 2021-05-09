import 'Users.dart';
import 'package:flutter/material.dart';

class Mbd extends StatelessWidget {
  final User user;

  const Mbd({Key key, this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsets.only(
        bottom: 20
      ),
      child: InkWell(
        onTap: () => null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(user.imageUrl),
              radius: 50,
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(user.name, style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white
                ),),
                SizedBox(height: 5,),
                Text(
                  user.mees,
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ],
            ), 
            SizedBox(width: 50,),
            Text(user.time,
                style: TextStyle(
                color: Colors.white

                ),
            )
          ],
        ),
      ),
    );
  }
}
