import 'package:flutx/flutx.dart';

class FxEmailValidator extends FxFieldValidatorRule<String> {

  @override
  String? validate(String? value, bool required, Map<String, dynamic> data) {
    if (!required) {
      if (value == null) {
        return null;
      }
    } else if (value != null && value.isNotEmpty) {
      if (!FxStringUtils.isEmail(value)) {
        return "Please enter valid email";
      }
    }
    return null;
  }

}

class FxLengthValidator implements FxFieldValidatorRule<String> {
  final bool short, required;
  final int? min, max, exact;

  FxLengthValidator({this.required = true,
    this.exact,
    this.min,
    this.max,
    this.short = false});

  @override
  String? validate(String? value, bool required, Map<String, dynamic> data) {
    if (value != null) {
      if (!required && value.isEmpty) {
        return null;
      }
      if (exact != null && value.length != exact!) {
        return short
            ? "Need $exact characters"
            : "Need exact $exact characters";
      }
      if (min != null && value.length < min!) {
        return short ? "Need $min characters" : "Longer than $min characters";
      }
      if (max != null && value.length > max!) {
        return short ? "Only $max characters" : "Lesser than $max characters";
      }
    }
    return null;
  }
}
