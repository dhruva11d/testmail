
class validate_password{
  static String? vaidate(String password){
    if(password.isEmpty){
      return "must enter password";
    }
    if(password.length<=8){
      return "invlaid password";
    }

    if(password.length>=8){
      return "valid password";
    }
    return null;

  }
}