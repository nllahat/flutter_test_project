import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_proj/presentation/common/page_wrapper.dart';

import '../../../application/matches/matches_bloc.dart';
import '../../../injection.dart';
import '../../common/page_wrapper.dart';
import 'widgets/matches_body.dart';

class MatchesPage extends StatelessWidget implements PageWrapper {
  @override
  Widget get wrappedPage => BlocProvider<MatchesBloc>(
        create: (context) => getIt<MatchesBloc>()..add(const GetLastStarted('2', 10)),
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return MatchesBody();
  }
}
