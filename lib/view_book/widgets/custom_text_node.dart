import 'package:markdown_widget/markdown_widget.dart';

class CustomTextNode extends ElementNode {
  CustomTextNode(this.text, this.config, this.visitor);
  final String text;
  final MarkdownConfig config;
  final WidgetVisitor visitor;

  @override
  void onAccepted(SpanNode parent) {
    final textStyle = config.p.textStyle.merge(parentStyle).copyWith(
          fontSize: 20,
        );
    children.clear();
    accept(TextNode(text: text, style: textStyle));
  }
}
