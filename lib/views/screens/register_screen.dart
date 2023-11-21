// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  // FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> register() async {
    final String name = nameController.text;
    final String email = emailController.text;
    final String password = passwordController.text;
    final String confirmPassword = confirmPasswordController.text;

    if (password == confirmPassword) {
      // var result = await auth.createUserWithEmailAndPassword(email: email, password: password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const SizedBox(height: 80),
            Image.asset(
              'assets/images/logo.png',
              width: 144,
            ),
            const SizedBox(height: 32),
            const Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'To get started, Login into your account',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            TextFormField(
              controller: nameController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Full name',
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email Address',
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: passwordController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: confirmPasswordController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Confirm Password',
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => openLoadingDialog(context),
              child: const SizedBox(
                width: double.infinity,
                height: 42,
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Have an account?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RegisterScreen()));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}

openLoadingDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          height: 200,
          color: Colors.white,
          padding: const EdgeInsets.all(24),
          child: const Column(
            children: [
              SizedBox(
                height: 48,
                width: 48,
                child: CircularProgressIndicator(),
              ),
              Text(
                'Loading ...',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        );
      });
}

class VerfuEmail extends StatefulWidget {
  const VerfuEmail({super.key});

  @override
  State<VerfuEmail> createState() => _VerfuEmailState();
}

class _VerfuEmailState extends State<VerfuEmail> {
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
