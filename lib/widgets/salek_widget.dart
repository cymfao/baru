import 'package:flutter/cupertino.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';

import '../blocs/featured_bloc.dart';

class SalekWidget extends StatelessWidget {
  const SalekWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fb = context.watch<FeaturedBloc>();
    return Html(data: fb.htmlData);
  }
}
