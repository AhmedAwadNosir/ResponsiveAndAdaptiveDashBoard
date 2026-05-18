class TextFieldSectionModal {
  final String title;
  final String hint;
  final void Function(String)? onSubmitted;
  final void Function(String)? onChanged;

  TextFieldSectionModal({
    required this.title,
    required this.hint,
    required this.onSubmitted,
    required this.onChanged,
  });
}
