typedef FxFieldValidator<T> = String? Function(T? value);

abstract class FxFieldValidatorRule<T> {
  String? validate(T? value, bool required, Map<String, dynamic> data);
}
