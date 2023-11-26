class mail_validator{

  static String? validate(String email){

if(email.isEmpty){
  return "Require field";
}

String pattern=r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
RegExp regexp= RegExp(pattern);
if(!regexp.hasMatch(email)){
return"Please enter a valid email ID";

}

if(regexp.hasMatch(email)){
  return null;
}
return null;
  }
}