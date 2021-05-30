import 'dart:async';

class AlertInputBloc {
  final _stateAlertInputController = StreamController<String>();

  StreamSink get alertInputSink => _stateAlertInputController.sink;
  Stream get alertInputStream => _stateAlertInputController.stream;
}
