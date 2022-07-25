import 'package:flutter/widgets.dart';
import 'package:flutter_dynamic_forms/flutter_dynamic_forms.dart';
import 'package:flutter_dynamic_forms_components/flutter_dynamic_forms_components.dart';

class DefaultRadioButtonGroupRenderer
    extends FormElementRenderer<RadioButtonGroup> {
  @override
  Widget render(
      RadioButtonGroup element,
      BuildContext context,
      FormElementEventDispatcherFunction dispatcher,
      FormElementRendererFunction renderer) {
    return Column(
      children: [
        ...element.choices
            .where((c) => c.isVisible)
            .map((choice) => renderer(choice, context))
            .toList(),
      ],
    );
  }
}
