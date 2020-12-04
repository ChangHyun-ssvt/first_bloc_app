import 'package:flutter_bloc/flutter_bloc.dart';

class CounterObserver extends BlocObserver {
  @override
  void onChange(Cubit cubit, Change change) {
    print('${cubit.runtimeType} $change');
    super.onChange(cubit, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print('${bloc.state} $transition');
    super.onTransition(bloc, transition);
  }
}
