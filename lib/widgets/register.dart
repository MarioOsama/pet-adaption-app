import 'package:flutter/material.dart';
import 'package:pet_adaption_app/main.dart';
import 'package:pet_adaption_app/models/user.dart';
import 'package:pet_adaption_app/services/auth-services.dart';
import 'package:pet_adaption_app/services/guidance-messages.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  // email controller
  final TextEditingController emailController = TextEditingController();

  // password controller
  final TextEditingController passController = TextEditingController();

  // username controller
  final TextEditingController userNameController = TextEditingController();

  // phone controller
  final TextEditingController phoneController = TextEditingController();

  // city controller
  final TextEditingController cityController = TextEditingController();

  // checking if user signing in or signing up
  bool _isSignUp = false;

  // sized box height
  double _sizedBoxHeight = 20.0;

  bool _validateEmailAndPassword(String email, String password) {
    // check validation of email and password
    if (email.isEmpty || password.isEmpty) {
      GuidanceMessages()
          .showErrorMessage(context, "Please enter your email and password");
      return false;

      // check if email format is valid
    } else if (!email.contains("@")) {
      GuidanceMessages()
          .showErrorMessage(context, "Please enter a valid email");
      return false;

      // check if password is valid
    } else if (password.length < 8) {
      GuidanceMessages().showErrorMessage(
          context, "Password must be at least 8 characters long");
      return false;

      // if email and password are valid
    } else {
      return true;
    }
  }

  // sign with google
  void _onSignWithGoogle() async {
    // tracking logging in process state
    final loginStatus = await AuthServices().signInWithGoogle();

    // simple error handling for sign in
    if (loginStatus.runtimeType == String) {
      final String warningMessage = loginStatus.toString()[0].toUpperCase() +
          loginStatus.toString().substring(1).replaceAll('-', ' ');
      GuidanceMessages().showWarningMessage(context, warningMessage);
    }
  }

  // sign in with email and password
  void _onSignIn(context, String email, String password) async {
    // check user is filled all signin info.
    final bool isValid = _validateEmailAndPassword(email, password);
    if (isValid) {
      // create an existing user
      final existingUser =
          AppUser.existingUser(email: email, password: password);
      // tracking logging in process state
      final loginStatus =
          await AuthServices().signInWithEmailAndPassword(existingUser);

      // simple error handling for sign in
      if (loginStatus.runtimeType == String) {
        final String warningMessage =
            "${loginStatus.toString()[0].toUpperCase() + loginStatus.toString().substring(1).replaceAll('-', ' ')}, please signup or try again later";
        GuidanceMessages().showWarningMessage(context, warningMessage);
      }
    }
  }

  void _onSignUp(context, String email, String password, String username,
      String phone, String city) async {
    // check user is filled all info.
    final bool isValid = _validateEmailAndPassword(email, password);

    if (isValid) {
      // create a new user
      final newUser = AppUser.newUser(
        email: email,
        password: password,
        username: username,
        city: city,
        phone: phone,
      );

      // check validation of phone number and city
      if (isValid && phone.isNotEmpty && city.isNotEmpty) {
        // phone validation
        if (phone.length < 10) {
          GuidanceMessages()
              .showErrorMessage(context, "Please enter a valid phone number");
        }
        // city validation
        else if (city.length < 3) {
          GuidanceMessages()
              .showErrorMessage(context, "Please enter a valid city");
        }
        // if info. is valid
        else {
          // creating user account
          final signUpStatus =
              await AuthServices().signUpWithEmailAndPassword(newUser);

          // simple error handling for sign up
          if (signUpStatus.runtimeType == String) {
            final String warningMessage =
                "${signUpStatus.toString()[0].toUpperCase() + signUpStatus.toString().substring(1).replaceAll('-', ' ')}.";
            GuidanceMessages().showWarningMessage(context, warningMessage);
          }
        }
      }
      // return error message if validation fails
      else {
        final String errorMessage = "Please enter your phone number and city";
        GuidanceMessages().showErrorMessage(context, errorMessage);
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passController.dispose();
    userNameController.dispose();
    phoneController.dispose();
    cityController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(28.0, 10.0, 28.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // email input
          TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            style: Theme.of(context).textTheme.titleMedium,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10),
              label:
                  Text('E-mail', style: Theme.of(context).textTheme.titleSmall),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color.fromARGB(255, 212, 212, 212),
                ),
              ),
            ),
          ),

          SizedBox(
            height: _sizedBoxHeight,
          ),

          // password input
          TextField(
            controller: passController,
            style: Theme.of(context).textTheme.titleMedium,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10),
              label: Text('Password',
                  style: Theme.of(context).textTheme.titleSmall),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Color.fromARGB(255, 212, 212, 212),
                ),
              ),
            ),
            obscureText: true,
          ),

          SizedBox(
            height: _sizedBoxHeight,
          ),

          if (_isSignUp)
            Column(
              children: [
                // username input
                TextField(
                  controller: userNameController,
                  keyboardType: TextInputType.name,
                  style: Theme.of(context).textTheme.titleMedium,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    label: Text('Username',
                        style: Theme.of(context).textTheme.titleSmall),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 212, 212, 212),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: _sizedBoxHeight,
                ),

                // phone input
                TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  style: Theme.of(context).textTheme.titleMedium,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    label: Text('Phone',
                        style: Theme.of(context).textTheme.titleSmall),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 212, 212, 212),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: _sizedBoxHeight,
                ),

                // city input
                TextField(
                  controller: cityController,
                  keyboardType: TextInputType.streetAddress,
                  style: Theme.of(context).textTheme.titleMedium,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    label: Text('City',
                        style: Theme.of(context).textTheme.titleSmall),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 212, 212, 212),
                      ),
                    ),
                  ),
                ),
              ],
            ),

          if (_isSignUp)
            SizedBox(
              height: _sizedBoxHeight,
            ),

          // sign button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // if sign up
                _isSignUp
                    ? _onSignUp(
                        context,
                        emailController.text,
                        passController.text,
                        userNameController.text,
                        phoneController.text,
                        cityController.text)
                    // if sign in
                    : _onSignIn(
                        context, emailController.text, passController.text);
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  elevation: 3,
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 60.0),
                  backgroundColor: foregroundColor,
                  foregroundColor: itemColor),
              child: Text(_isSignUp ? 'Sign up' : 'Sign In',
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
          ),

          if (!_isSignUp)
            SizedBox(
              height: _sizedBoxHeight,
            ),

          Column(
            children: [
              // explain text
              if (!_isSignUp)
                Stack(alignment: Alignment.center, children: [
                  // line through text
                  Container(
                    decoration: const BoxDecoration(color: Colors.grey),
                    height: 2,
                  ),

                  // text lable
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    color: Colors.white,
                    child: Text("Or continue with",
                        style: Theme.of(context).textTheme.titleSmall),
                  ),
                ]),

              if (!_isSignUp)
                SizedBox(
                  height: _sizedBoxHeight,
                ),

              // google sign in button
              if (!_isSignUp)
                TextButton(
                  onPressed: () {
                    _onSignWithGoogle();
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 250, 250, 250),
                    elevation: 2,
                    shadowColor: Colors.black,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(width: 1)),
                    padding: const EdgeInsets.all(10.0),
                  ),
                  // google image and text
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/google.png",
                        scale: 35,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Sign In with Google",
                        style: Theme.of(context).textTheme.labelMedium,
                      )
                    ],
                  ),
                ),

              // register row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // explain text
                  Text(
                    _isSignUp ? 'Already a member?' : 'Not a member?',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),

                  // register text button
                  TextButton(
                      onPressed: () {
                        setState(() {
                          // change registering state
                          _isSignUp = !_isSignUp;
                          // clear text fields
                          setState(() {
                            emailController.clear();
                            passController.clear();
                            userNameController.clear();
                            phoneController.clear();
                            cityController.clear();
                          });
                        });
                      },
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(left: 5.0)),
                      child: Text(
                        _isSignUp ? 'Sign In' : 'Register Now',
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(color: Colors.blue),
                      ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
