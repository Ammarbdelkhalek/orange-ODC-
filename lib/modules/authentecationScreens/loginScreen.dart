import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/cubit/authenticationcubit/logincubit/loginCubit.dart';
import 'package:myapp/cubit/authenticationcubit/states/loginstates.dart';
import 'package:myapp/shared/component/constance.dart';
import '../../shared/component/component.dart';
import '../../shared/component/widget/defaultAppbar.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              appBar: defaultAppBar(context),
              body: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 450.0,
                      height: 450.0,
                      clipBehavior: Clip.none,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2.0),
                        borderRadius: const BorderRadius.all(Radius.circular(
                                10.0) //                 <--- border radius here
                            ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          key: formkey,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Login',
                              style: TextStyle(
                                color: defaultColor,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            coulmDivider(),
                            defaultFormField(
                              controller: emailcontroller,
                              type: TextInputType.emailAddress,
                              validate: (value) {},
                              label: 'email',
                            ),
                            coulmDivider(),
                            defaultFormField(
                              controller: passwordcontroller,
                              type: TextInputType.visiblePassword,
                              validate: (value) {},
                              label: 'password',
                            ),
                            coulmDivider(),
                            ConditionalBuilder(
                                condition: state is! LoginLoadingStates,
                                builder: (context) => defaultCustomizedButton(
                                    function: () {
                                      LoginCubit.get(context).userlogin(
                                        email: emailcontroller.text,
                                        password: passwordcontroller.text,
                                      );
                                    },
                                    text: 'Login'),
                                fallback: (context) => const Center(
                                    child: CircularProgressIndicator())),
                            coulmDivider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 200.0,
                                  height: 1.0,
                                  color: Colors.black,
                                ),
                                const Text(
                                  'or',
                                  style: TextStyle(
                                    color: defaultColor,
                                  ),
                                ),
                                Container(
                                  width: 200.0,
                                  height: 1.0,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            coulmDivider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                facebookbutton(
                                  function: () {},
                                  child: Row(
                                    children: const [
                                      // Image.network(
                                      //   'https://toppng.com/uploads/preview/facebook-logo-white-11549845815wclpvkfdsb.png',
                                      //   width: 30.0,
                                      //   height: 30.0,
                                      // ),
                                      Text(
                                        'Facebook',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                rowDivider(),
                                facebookbutton(
                                  function: () {},
                                  child: Row(
                                    children: [
                                      Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1Uw6QFsq8_8vUWYiExuNcLDWULjRlspqp_3_W0gpjopoT-PjKqf5J0Eh88V_C4MDSUTk&usqp=CAU',
                                        width: 30.0,
                                        height: 30.0,
                                      ),
                                      const Text(
                                        'Google',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 400.0,
                      color: Colors.brown,
                      child: Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Row(
                          children: [
                            Column(children: [
                              const Text(
                                'For Any Question',
                                style: TextStyle(
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              coulmDivider(),
                              Row(
                                children: const [
                                  // Image.asset(
                                  //   'assets/images/email.png',
                                  //   width: 15,
                                  //   height: 20,
                                  // ),
                                  Text(
                                    'Email@petology.com',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 215, 205, 201)),
                                  ),
                                ],
                              ),
                              coulmDivider(),
                              Row(children: const [
                                // Image.asset(
                                //   'assets/images/phone.png',
                                //   width: 15,
                                //   height: 20,
                                // ),
                                Text(
                                  '0121122333',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Color.fromARGB(255, 215, 205, 201)),
                                ),
                              ]),
                            ]),
                            const SizedBox(
                              width: 40.0,
                            ),
                            Column(
                              children: [
                                Text(
                                  'We Are Wating You ',
                                  style: TextStyle(
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.brown[400]),
                                ),
                                coulmDivider(),
                                Row(
                                  children: const [
                                    // Image.asset(
                                    //   'assets/images/location-on.png',
                                    //   width: 15,
                                    //   height: 20,
                                    // ),
                                    Text(
                                      'First settelment // cairo',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 215, 205, 201)),
                                    ),
                                  ],
                                ),
                                coulmDivider(),
                                Row(
                                  children: const [
                                    // Image.asset(
                                    //   'assets/images/location-on.png',
                                    //   width: 15,
                                    //   height: 20,
                                    // ),
                                    Text(
                                      'Cairo  Egypt',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 215, 205, 201)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Image.asset(
                              'assets/images/footer.png',
                              width: 320,
                              height: 300,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
