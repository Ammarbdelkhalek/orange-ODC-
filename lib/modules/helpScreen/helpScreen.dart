import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/cubit/HelpCubit.dart/HelpCubit.dart';
import 'package:myapp/cubit/HelpCubit.dart/HelpStates.dart';
import 'package:myapp/shared/component/component.dart';

import '../../cubit/authenticationcubit/signupCupit/signupcubit.dart';
import '../../cubit/authenticationcubit/states/loginstates.dart';
import '../../shared/component/constance.dart';
import '../../shared/component/widget/defaultAppbar.dart';

class HelpScreen extends StatelessWidget {
  HelpScreen({Key? key}) : super(key: key);
  var categoryController = TextEditingController();
  var locationController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  var phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HelpCubit(),
      child: BlocConsumer<HelpCubit, HelpStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              appBar: defaultAppBar(context),
              body: Column(children: [
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
                                'help your friend  ',
                                style: TextStyle(
                                  color: defaultColor,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              coulmDivider(),
                              defaultFormField(
                                controller: categoryController,
                                type: TextInputType.emailAddress,
                                validate: (value) {},
                                label: 'category',
                              ),
                              coulmDivider(),
                              defaultFormField(
                                controller: locationController,
                                type: TextInputType.visiblePassword,
                                validate: (value) {},
                                label: 'location',
                              ),
                              coulmDivider(),
                              defaultFormField(
                                controller: phoneNumber,
                                type: TextInputType.visiblePassword,
                                validate: (value) {},
                                label: 'email',
                              ),
                              coulmDivider(),
                              ConditionalBuilder(
                                  condition: state is! LoginLoadingStates,
                                  builder: (context) => defaultCustomizedButton(
                                      function: () {}, text: 'send'),
                                  fallback: (context) => const Center(
                                      child: CircularProgressIndicator())),
                              coulmDivider(),
                              ConditionalBuilder(
                                  condition: state is! LoginLoadingStates,
                                  builder: (context) => defaultCustomizedButton(
                                      function: () {}, text: 'call'),
                                  fallback: (context) => const Center(
                                      child: CircularProgressIndicator()))
                            ])))),
              ]),
            );
          }),
    );
  }
}
