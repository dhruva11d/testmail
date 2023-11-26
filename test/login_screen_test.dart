import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:testmail/emailtest.dart';

void main(){
  testWidgets("Login Screen Should have  AppBar",(WidgetTester tester)async{
    //Arrange
    await tester.pumpWidget(const MaterialApp(home: App(),));


    //Act
    Finder title=find.text("mail test");


    //Assert
    expect(title,findsOneWidget);
  });

testWidgets("test username", (WidgetTester tester) async {
  await tester.pumpWidget(const MaterialApp(home: App(),));

  Finder username=find.byKey(const ValueKey("email ID"));

  expect(username, findsOneWidget);
});

testWidgets(" app should have password", (WidgetTester tester) async{
  //Arrange
  await tester.pumpWidget(const MaterialApp(home: App(),));

  //Act
  Finder username=find.byKey(const ValueKey("email ID"));

  //Assert
  expect(username,findsOneWidget);
});


testWidgets("App should have password", (WidgetTester tester) async {
  //arrange
  await tester.pumpWidget(const MaterialApp(home: App(),));

  //Act
  Finder password=find.byKey(const ValueKey("password"));

  //Assert
  expect(password,findsOneWidget);
});

testWidgets("app should have a button", (WidgetTester tester)async{
 //arrange
  await tester.pumpWidget(const MaterialApp(home: App(),));

  //Act
  Finder button =find.byType(ElevatedButton);

  //Assert
  expect(button, findsOneWidget);

  });

testWidgets(" all fields need to be filled", (WidgetTester tester) async{
  await tester.pumpWidget(const MaterialApp(home: App(),));

  Finder button=find.byType(ElevatedButton);
  await tester.tap(button);
  await tester.pumpAndSettle();
  Finder errortext=find.text("Require field");

  expect(errortext, findsNWidgets(2));


  });

testWidgets("should submit when the user enters mail and password", (WidgetTester tester) async{
  tester.pumpWidget(const MaterialApp(
    home: App(),
  ));

  Finder usermailtext=find.byKey(const ValueKey("email ID"));
  Finder userpassword=find.byKey(const ValueKey("password"));
  await tester.enterText(usermailtext, "dhruva@gmail.com");
  await tester.enterText(userpassword, "password");
  
  Finder LoginButton=find.byType(ElevatedButton);
  await tester.tap(LoginButton);
  await tester.pumpAndSettle();
  
  Finder errorText=find.text("R");
  
});


}