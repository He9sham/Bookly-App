import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthRouter extends StatelessWidget {
  const AuthRouter({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.all(16),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.purple),
              ),
              onPressed: () {
                GoRouter.of(context).push('/LoginView');
              },
              child: const Text(
                'LOGIN',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.all(16),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {},
              child: const Text(
                'Sign Up',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
