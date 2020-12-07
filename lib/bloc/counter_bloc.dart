import 'package:bloc/bloc.dart';

// 이벤트 정의
enum CounterEvent { increment, decrement, reset }

class CounterBloc extends Bloc<CounterEvent, int> {
  // 초기값 설정
  CounterBloc() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    // 이벤트에 따라 상태 변화를 시켜준 뒤 리턴해준다
    switch (event) {
      case CounterEvent.increment:
        yield state + 1;
        break;
      case CounterEvent.decrement:
        yield state - 1;
        break;
      case CounterEvent.reset:
        yield 0;
        break;
    }
  }

  @override
  void onEvent(CounterEvent event) {
    // TODO: implement onEvent
    super.onEvent(event);
  }

  @override
  void onTransition(Transition<CounterEvent, int> transition) {
    // TODO: implement onTransition
    super.onTransition(transition);
  }

  @override
  void onChange(Change<int> change) {
    // TODO: implement onChange
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);
  }
}
