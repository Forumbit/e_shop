import 'dart:developer';
import 'dart:io';

import 'package:logger/logger.dart';

class IosConsoleOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    final StringBuffer buffer = StringBuffer();
    event.lines.forEach(buffer.writeln);
    log(buffer.toString());
  }
}

final logger = Logger(
  printer: PrettyPrinter(lineLength: 80),
  output: MultiOutput([
    Platform.isIOS ? IosConsoleOutput() : ConsoleOutput(),
  ]),
);
