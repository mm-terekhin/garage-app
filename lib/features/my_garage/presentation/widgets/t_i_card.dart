import 'package:flutter/material.dart';
import 'package:garage/app/app.dart';
import 'package:garage/app/i18n/strings.g.dart';
import 'package:garage/shared/domain/domain.dart';
import 'package:garage/shared/presentation/presentation.dart';

class TICard extends StatefulWidget {
  const TICard({
    super.key,
    this.lastReplacement,
    this.margin,
    required this.title,
    required this.form,
  });

  final String title;
  final DateTime? lastReplacement;
  final EdgeInsetsGeometry? margin;
  final LiquidForm form;

  @override
  State<TICard> createState() => _TICardState();
}

class _TICardState extends State<TICard> {
  var _isExpand = false;
  var _isForm = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AnimatedContainer(
      margin: widget.margin,
      constraints: BoxConstraints(
        minHeight: _isExpand ? theme.spacings.x40 : theme.spacings.x14,
      ),
      decoration: BoxDecoration(
        color: theme.palette.bgPrimary,
        borderRadius: BorderRadius.all(
          theme.radii.x5,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.palette.borderPrimary,
            blurRadius: theme.spacings.x1,
          ),
        ],
      ),
      padding: EdgeInsets.all(
        theme.spacings.x4,
      ),
      duration: const Duration(
        milliseconds: 200,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  widget.title,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.all(
                    theme.radii.x10,
                  ),
                  onTap: () {
                    setState(() {
                      _isExpand = !_isExpand;
                    });
                  },
                  child: Icon(
                    _isExpand
                        ? Icons.keyboard_arrow_up_sharp
                        : Icons.keyboard_arrow_down_sharp,
                  ),
                ),
              ),
            ],
          ),
          if (_isExpand)
            _Form(
              form: widget.form,
            ),
        ],
      ),
    );
  }
}

class _Form extends StatelessWidget {
  const _Form({
    required this.form,
  });

  final LiquidForm form;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: SimpleField(
                padding: EdgeInsets.zero,
                labelText: context.i18n.dateFieldLabel,
              ),
            ),
            SizedBox(
              width: theme.spacings.x3,
            ),
            Expanded(
              child: SimpleField(
                padding: EdgeInsets.zero,
                labelText: context.i18n.mileageFieldLabel,
              ),
            ),
          ],
        ),
        SizedBox(
          height: theme.spacings.x3,
        ),
        SimpleField(
          labelText: context.i18n.descriptionFieldLabel,
        ),
      ],
    );
  }
}
