import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        child: Text('Click Me'),
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

/*

 * We started making Xylophone app we gonna be diving deeper into Dart Programming
 
  ? We build an app with formal functionality


  * By the end of this ,we not only understand some key-concepts of Dart,but also we gonna be looking at How we can use Flutter packages in  your code to level up our app and make it have even more functionality

   What We'll Make : 
     
     ? We built a music app  which allow you to play sounds or if you're super talented then you actually give it to play real sound

   ! In order for our app to play sound both in ios and android ecosystem,we can use  some of the flutter packages that help us to achieve that

   * Before incorporating package in our code that help us to play sound in our app
   
   *  First,we need to understand what flutter packages are a & How they work?
   
   So we can see all the steps of the process and then we can apply our knowledge to be able to use package in Xylophone app to play sound

   ! What exactly Flutter Packages are ?

  ? Flutter packages are open-source libraries of code that other people have created which you can incorporate into your project with minimal effort

  If you head over to the flutter packages documentation,

  ? You can see lot of packages which are used most frequently and we gonna be using some of these libraries

  While searching for packages,you might end up with different available packages Then decide just by looking at scores

Whenever you find the package that you  want to work with,The easiest way to get started by clicking on installing tab

 * Add it as dependency in pubspec.yaml under dependencies section
 * You can install packages from command-line using 
    pub get
    flutter packages get

    There are couple ways of adding dependencies:-
      ? - By simply adding name ( This will tell Flutter to grab this package )
      ? - We can also tell flutter to download package with specified version


 !     Finally,we can make use of it by just importing

* We can also see some of the examples . This kind of tells you how you could work with this package and what we can do

Depending on what you need,you can pull it out and use it inside your app

! Packages  are essentially a bunch of code that somebody had wrote to achieve specific goal,we can easily plug it in whenever we need
 

 * How to play sound across different platform
  - first thing,we need to search for play audio package, audioplayers

 ? A flutter plugin to play multiple audio files simultaneously

  We have already seen how we can incorporate packages into your project

   Don't feel you need to memorize everything,it's important that you understand what's going on

   Google and Docs are the best-friends for developers 

   Don't ever let anyone make you feel bad by looking at things in Google or stack-overflow or in the docs

   * Now it's important to read through most of the documentation before you get started because we'll discover new things 
    Let's look at ReadME and see how we can do this
*/
// ! In order to play local assets,you must use the AudioCache class

// * We create new player or build a player first using the package

// We'll be working with latest syntax in all of these sections

/*
  
   ? The way we could create audio-player is by write something like
      final player=AudioCache()

      Whenever button gets pressed,we create a new player and we have to tell what to play 

      We specify the name of the file inside play()

      Now we got our app which currently has single button,which plays single sound

      ! How to play multiple sounds?
      You should have 7 buttons each with a differnt color and going from top to bottom when you click on them,you'll hear a different sound

      ? We can structure them by adding layout,for now let's concentrate on functionality

      * We can get rid of repeated code over here by using Dart Functions
 
      ? We create multiple children Widgets using Column

 ! FlatButton and Audio-Cache gets deprecated,so we need to replace it with TextButton and AudioPlayer

  ! Dart-Functions
   
   * They simply package whole bunch of code altogether within {}
   
   When you want to execute all the instructions in one go,you can simply call the function

   * We can specify inputs to our functions and we can use that input inside of our function
   * This makes our function far more adaptable because we now get it to do  slightly different things by providing different inputs
   * The inputs that we provide to functions -arguments
   * Functions have return type as well as we need to specify the data type & name of the arguments
   * Calling the function with or without arguments
  You can assign values to the arguments while calling on the function
  You can we switch the arguments list by providing names to the function

  ! Updating UI of our app
  We also have full width keys  that take up all of the available space in horizontal axis and vertical space is evenly divided among 7 keys

 * Instead of trying to create many many times, what if we try to use function to create that instead and we call that function seven times
 
 Now we are going to define a function which returns widget

 * We won't able to use Function expressions with void type ,we can use it only if it returns Widget type
 
 So,here we use  a function buildKey() which returns Widget (Expanded)
 
 ! Dart Arrow Functions
 
  => :- Arrow Function Syntax

  * Arrow functions only works when you have single line of code or instruction

  
 */



