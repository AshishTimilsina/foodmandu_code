import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodmandu/provider/auth_provider.dart';
import 'package:get/get.dart';

import '../instances/flutter_toast.dart';
import '../provider/common_provider.dart';
import 'login_page.dart';

class Signuppage extends ConsumerWidget {
  Signuppage({super.key});
  final usernamectrl = TextEditingController();
  final emailctrl = TextEditingController();
  final passwordctrl = TextEditingController();
  final _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, ref) {
    ref.listen(authprovider, (previous, next) {
      if (next.isSuccess) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Loginpage();
        }));
      } else if (next.isError) {
        FlutterToast.showerror(message: next.errmessage);
      }
    });
    final mode = ref.watch(modeprovider);
    final pass = ref.watch(passwordHide);
    final auth = ref.watch(authprovider);

    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
            child: Form(
              key: _form,
              autovalidateMode: mode,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(255, 221, 34, 1),
                    Color.fromRGBO(255, 221, 34, 1),
                    Color.fromRGBO(151, 138, 35, 1),
                  ],
                )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/icon.jpg'))),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Foodmandu',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'Feast at Your Fingertips',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'SIGNUP PAGE',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                        controller: usernamectrl,
                        keyboardType: TextInputType.text,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return 'Username must not be empty';
                          } else if (val.length < 3) {
                            return 'Please Provide correct username';
                          }
                          return null;
                        },
                        style: const TextStyle(color: Colors.black),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          errorStyle: const TextStyle(
                            color: Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          prefixIcon: const CircleAvatar(
                            backgroundColor: Colors.black87,
                            radius: 30,
                            child: Icon(
                              Icons.person_2_outlined,
                              color: Color.fromRGBO(255, 221, 34, 1),
                            ),
                          ),
                          hintText: "Your name",
                          hintStyle: const TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        style: const TextStyle(color: Colors.black),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return 'Email is required';
                          } else if (!RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(val)) {
                            return 'Invalid Email';
                          }
                          return null;
                        },
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          errorStyle: const TextStyle(
                            color: Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          prefixIcon: const CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 30,
                            child: Icon(
                              Icons.email_outlined,
                              color: Color.fromRGBO(255, 221, 34, 1),
                            ),
                          ),
                          hintText: "Email Address",
                          hintStyle: const TextStyle(color: Colors.black),
                        ),
                        controller: emailctrl,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.black),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return ' Password cannot be empty';
                          } else if (val.length < 8) {
                            return 'Password must be atleast of 8 characters';
                          }
                          return null;
                        },
                        textAlign: TextAlign.center,
                        obscureText: pass ? true : false,
                        decoration: InputDecoration(
                          errorStyle: const TextStyle(
                            color: Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          prefixIcon: const CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 30,
                            child: Icon(
                              Icons.key,
                              color: Color.fromRGBO(255, 221, 34, 1),
                            ),
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {
                                ref.read(passwordHide.notifier).state =
                                    !ref.read(passwordHide.notifier).state;
                              },
                              icon: pass
                                  ? const Icon(
                                      Icons.lock,
                                      color: Colors.black,
                                    )
                                  : const Icon(
                                      Icons.lock_open_outlined,
                                      color: Colors.black,
                                    )),
                          hintText: "Password",
                          hintStyle: const TextStyle(color: Colors.black),
                        ),
                        controller: passwordctrl,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        auth.isLoad ? null : _form.currentState!.save();
                        if (_form.currentState!.validate()) {
                          ref.read(authprovider.notifier).usersignup(
                              email: emailctrl.text.trim(),
                              password: passwordctrl.text.trim(),
                              username: usernamectrl.text.trim());
                          FocusScope.of(context).unfocus();
                        } else {
                          ref.read(modeprovider.notifier).change();
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Center(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 221, 34, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account ?',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.to(() => Loginpage(),
                                transition: Transition.leftToRight);
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
