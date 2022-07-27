import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/cubit/HelpCubit.dart/HelpStates.dart';

class HelpCubit extends Cubit<HelpStates> {
  HelpCubit() : super(initState());
  static HelpCubit get(context) => BlocProvider.of(context);
}
