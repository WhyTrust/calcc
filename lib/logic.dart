bool inError = false;
bool wasComma = false;
String wholeExpression = "";
String previousInputs = "";

String getCalculations(String input) {
  if (input == "C") {
    inError = false;
    wholeExpression = "";
    previousInputs = "";
    wasComma = false;
    return "";
  } else if (input == "=") {
    // TODO Return Calculation when = is pressed.
  }

  if (inError) {
    return "Error";
  }
  wholeExpression = wholeExpression + input;
  if (isNumeric(input) || input == ".") {
    previousInputs += input;
    if (input == ".") {
      wasComma = true;
    }
  }

  return wholeExpression;
}

bool isNumeric(String s) {
  if (num.tryParse(s) == null) {
    print("isntNr");
    return false;
  }
  print("isNr");
  return true;
}
