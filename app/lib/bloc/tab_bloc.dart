import 'dart:async';

class TabBloc {
  final _stateTabController = StreamController<bool>();

  StreamSink<bool> get tabSink => _stateTabController.sink;
  Stream<bool> get tabStream => _stateTabController.stream;
}
