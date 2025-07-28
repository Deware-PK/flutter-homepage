import 'package:flutter/material.dart';
import 'package:login/pages/sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscurePassword = true;
  bool _rememberMe = false;
  final COLOR_THEME = Color.fromRGBO(103, 80, 164, 1.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1A1A1A),
        elevation: 0.0, // Remove navbar shadow
        centerTitle: true,

        leading: GestureDetector(
          onTap: () {},

          child: Container(
            padding: EdgeInsets.only(left: 24.0, top: 24.0),
            alignment: Alignment.center,
            child: Image.asset(
              "assets/icons/left-arrow.png",
              width: 16,
              height: 16,
            ),
          ),
        ),
      ),

      backgroundColor: Color(0xFF1A1A1A),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                const Text(
                  'Login to your\nAccount',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 32),

                // Email Field
                TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: Colors.white70,
                    ),
                    // hintText: 'Email address',
                    // hintStyle: const TextStyle(color: Colors.white54),
                    filled: true,
                    fillColor: Colors.black26,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    labelText: 'Email address',
                  ),
                ),

                // Password Field
                const SizedBox(height: 18),
                TextField(
                  obscureText: _obscurePassword,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: Colors.white70,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.white70,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                    filled: true,
                    fillColor: Colors.black26,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    labelText: 'Password',
                  ),
                ),

                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Checkbox(
                              value: _rememberMe,
                              onChanged: (value) {
                                setState(() {
                                  _rememberMe = value!;
                                });
                              },
                              activeColor: COLOR_THEME,
                            ),
                            const Text(
                              'Remember Me',
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // handle forgot password
                        },
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Color.fromRGBO(103, 80, 164, 1.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                //Sign in button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: COLOR_THEME,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Line and text
                Row(
                  children: <Widget>[
                    const Expanded(
                      child: Divider(color: Colors.white30, thickness: 1),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        'Enter via Social Networks',
                        style: TextStyle(color: Colors.white60),
                      ),
                    ),

                    const Expanded(
                      child: Divider(color: Colors.white30, thickness: 1),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // Social Media Icons
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(8),
                          side: BorderSide(color: COLOR_THEME, width: 2),
                          backgroundColor: Colors.transparent,
                        ),
                        child: Image.asset(
                          'assets/icons/x.png',
                          width: 32,
                          height: 32,
                        ),
                      ),

                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(8),
                          side: BorderSide(color: COLOR_THEME, width: 2),
                          backgroundColor: Colors.transparent,
                        ),
                        child: Image.asset(
                          'assets/icons/discord.png',
                          width: 32,
                          height: 32,
                        ),
                      ),

                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(9),
                          side: BorderSide(color: COLOR_THEME, width: 2),
                          backgroundColor: Colors.transparent,
                        ),
                        child: Image.asset(
                          'assets/icons/facebook.png',
                          width: 32,
                          height: 32,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 32),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.white),
                      ),

                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const SignUpPage()));
                        },
                        child: const Text(
                          " Sign up",
                          style: TextStyle(
                            color: Color.fromRGBO(103, 80, 164, 1.0),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
