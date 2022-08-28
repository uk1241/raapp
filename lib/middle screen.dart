import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_sample/jewellery.dart';
import 'package:my_sample/logistics.dart';
import 'package:my_sample/real_farmton.dart';
import 'package:my_sample/school%20signup.dart';
import 'package:my_sample/screen1.dart';
import 'package:my_sample/screen9.dart';
import 'package:my_sample/screenlogin.dart';
import 'package:my_sample/splash.dart';
import 'package:my_sample/widgets/bottomnavbar.dart';

main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  myapp({Key? key}) : super(key: key);
     

// final screens[
//       Homescreen(),
//       middlescreen(),
//     ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: middlescreen(),
      routes: {
        'screen_1': (ctx) {
          return middlescreen();
        },
        'screen_2': (ctx) {
          return screenone();
        },
        'screen_3': (ctx) {
          return screenone();
        },
        'screen_4': (ctx) {
          return screenone();
        },
        'screen_5': (ctx) {
          return screenfive();
        },
        'screen_6': (ctx) {
          return screensix();
        },
        'screen_7': (ctx) {
          return screenlogin();
        },
        'screen_14': (ctx) {
          return forteen();
        }
       
      },
    );
  }
}

class middlescreen extends StatelessWidget {
  middlescreen({Key? key}) : super(key: key);

    
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar:AppBar(
        title: const Text( 
          'ASSOCIATES',
          textAlign: TextAlign.left,
          ),
        // centerTitle: true,
        backgroundColor: Color.fromARGB(181, 32, 126, 202),
        leading: Padding(padding: const EdgeInsets.all(8.0),
        child: Image.network('https://i.postimg.cc/SsSbCnZ5/Untitled-1.png'),
        
        
        ),
        
      ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(

              image:  DecorationImage(
              image: NetworkImage('https://i.postimg.cc/ryRF1ZGx/BG10.jpg'),
              fit: BoxFit.cover,
              
              ),
              // color: Colors.blueGrey,
              // border: Border.all(color: Colors.black, width: 5),
            ),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('screen_4');
                    
                  },
                  child: Text('LOGISTIC',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  
                  ),
                  ),
              ),
                // const SizedBox(
                //       height: 50,
                //       ),
                
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('screen_11');
                  },
                  child: Text('JEWELLERY',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                
            
                
               
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('screen_3');
                  },
                  child: Text('EDUCATION',
                    style:
                    
                     const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                     ),
                     
                  ),
                  ),



                  //  TextButton(
                  // onPressed: () {
                  //   Navigator.of(context).pushNamed('screen_14');
                  // },
                  // child: Text('REAL-FARMTON',
                  //   style:
                  //
                  //    const TextStyle(
                  //     fontSize: 15,
                  //     fontWeight: FontWeight.bold,
                  //    ),
                  //
                  // ),
                  // ),
               
              
              ],
            ),
          ),
        ),
         bottomNavigationBar: bottomnavbar(),
        );
  }
} 



BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      width: 3.0
    ),
    borderRadius: BorderRadius.all(
        Radius.circular(5.0) //                 <--- border radius here
    ),
  );
}
