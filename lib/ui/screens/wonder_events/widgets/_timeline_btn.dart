part of '../wonder_events_screen.dart';

class _TimelineBtn extends StatelessWidget {
  const _TimelineBtn({Key? key, required this.type, this.width}) : super(key: key);
  final WonderType type;
  final double? width;

  @override
  Widget build(BuildContext context) {
    void handleBtnPressed() => context.go(ScreenPaths.timeline(type));
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $styles.insets.md),
      child: SizedBox(
        width: width,
        child: AppBtn.from(
          text: $strings.eventsListButtonOpenGlobal,
          expand: true,
          onPressed: handleBtnPressed,
          semanticLabel: $strings.eventsListButtonOpenGlobal,
        ),
      ),
    );
  }
}
