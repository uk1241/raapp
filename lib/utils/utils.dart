import 'package:flutter/foundation.dart' show kDebugMode;

printIfDebug(data) {
  if (kDebugMode) {
    print(data);
  }
}
