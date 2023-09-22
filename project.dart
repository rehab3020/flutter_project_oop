class Project {
  String title;
  int price;
  DateTime receivingDate;
  DateTime deadline;
  bool _isUiDone = false;
  bool _isProjectDone = false;
  bool _isFlutterDone = false;
  bool _isBackendDone = false;

  Project({
    required this.title,
    required this.price,
    required this.receivingDate,
    required this.deadline,
  });
  bool get isUiDone => _isUiDone;
  bool get isFlutterDone => _isFlutterDone;
  bool get isBackendDone => _isBackendDone;
  bool get isProjectDone => _isProjectDone;
  void uiFinished() {
    _isUiDone = true;
    if (_isBackendDone == true && _isFlutterDone == true && _isUiDone == true) {
      _isProjectDone = true;
    }
  }

  void flutterFinished() {
    _isFlutterDone = true;
    if (_isBackendDone == true && _isFlutterDone == true && _isUiDone == true) {
      _isProjectDone = true;
    }
  }

  void backendFinished() {
    _isBackendDone = true;
    if (_isBackendDone == true && _isFlutterDone == true && _isUiDone == true) {
      _isProjectDone = true;
    }
  }

  @override
  String toString() {
    return "project title : $title \n"
        "project price : $price \n"
        "project receivingDate : $receivingDate \n"
        "project deadline : $deadline ";
  }
}
