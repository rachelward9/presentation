// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'dart:js';

void main() {
  querySelector("#dart-btn").onClick.listen((_) => collapse("#collapseOne"));
}

void collapse(String elemSelector) {
  JsObject elem = context.callMethod("jQuery", [elemSelector]);
  elem.callMethod("collapse", ["toggle"]);
}
