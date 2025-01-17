import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomNavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "Total: ", 
                  style: TextStyle(
                    fontSize: 19, 
                    fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "\$10", 
                  style: TextStyle(
                    fontSize: 19, 
                    fontWeight: FontWeight.bold, 
                    color: Colors.red
                  ),
                ),
              ],
            ),
            ElevatedButton.icon(
              onPressed: (){}, 
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(
                    vertical:13,
                    horizontal: 15,
                  ),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),  // Border radius adjusted to make it more oval
                  ),
                ),
              ),
              icon: Icon(CupertinoIcons.cart, 
              color: Colors.white),
              label: Text(
                "Add To Cart", 
                style: TextStyle(
                  fontSize: 16, 
                  fontWeight: FontWeight.bold,
                  color: Colors.white,  // Explicitly set text color to white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}