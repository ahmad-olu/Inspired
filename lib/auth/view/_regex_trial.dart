// public boolean passwordValidates( String pass ) {
//    int count = 0;

//    if( 8 <= pass.length() && pass.length() <= 32  )
//    {
//       if( pass.matches(".*\\d.*") )
//          count ++;
//       if( pass.matches(".*[a-z].*") )
//          count ++;
//       if( pass.matches(".*[A-Z].*") )
//          count ++;
//       if( pass.matches(".*[*.!@#$%^&(){}[]:";'<>,.?/~`_+-=|\\].*") )
//          count ++;
//    }

//    return count >= 3;
// }

// ^                                            Match the beginning of the string
// (?=.*[0-9])                                  Require that at least one digit appear anywhere in the string
// (?=.*[a-z])                                  Require that at least one lowercase letter appear anywhere in the string
// (?=.*[A-Z])                                  Require that at least one uppercase letter appear anywhere in the string
// (?=.*[*.!@$%^&(){}[]:;<>,.?/~_+-=|\])        Require that at least one special character appear anywhere in the string
// .{8,32}                                      The password must be at least 8 characters long, but no more than 32
// $                                            Match the end of the string.

