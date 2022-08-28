import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_sample/main.dart';

class bottomnavbar extends StatelessWidget {
  const bottomnavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Homescreen.selectedindexnotifier,
      builder: (BuildContext ctx, int updatedindex, Widget? _) {
       return BottomNavigationBar(
         type: BottomNavigationBarType.fixed, // Fixed 
          backgroundColor:  Color.fromARGB(181, 32, 126, 202),
        selectedItemColor: Color.fromARGB(255, 16, 56, 75),
        unselectedItemColor: Colors.black,
          currentIndex: updatedindex,
          onTap: (newindex) {
           Homescreen.selectedindexnotifier.value  = newindex;
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
            BottomNavigationBarItem(
                icon: Icon(Icons.category_rounded), label: 'CATEGORY'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded), label: 'PROFILE'),
          ],
        );
      },
    );
  }
}
