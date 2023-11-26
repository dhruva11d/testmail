import 'package:flutter_test/flutter_test.dart';
import 'package:testmail/mailtest_function.dart';
import 'package:testmail/validate_password.dart';

void main(){
  group("to test for a email Validation", () {

    test("to test email validation",(){
      var result =mail_validator.validate('');
      expect(result, "Require field");
    });



    test("to test for invalid pattern",(){
      var result= mail_validator.validate("efweWEW22E`31");
      expect(result,"Please enter a valid email ID");
    });



    test("to test a valid email id",(){
      var result=mail_validator.validate("abc@gmail.com");
      expect(result,null);
    });
  });

  group("to test password", () {

  });


  group("to test password", () {
    test("to test for empty password", () {
      var result=validate_password.vaidate("");
      expect(result,"must enter password");
    });

    test("to test for invalid password", (){
      var result=validate_password.vaidate("abcd");
      expect(result,"invlaid password");

    });

    test("to test a valid password", () {
      var result=validate_password.vaidate("123456789abc");
      expect(result,"valid password");
    });
  });

  
}