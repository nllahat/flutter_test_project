import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_proj/presentation/common/page_wrapper.dart';

import '../../../application/teams/teams_bloc.dart';
import '../../../injection.dart';
import '../../common/page_wrapper.dart';
import 'widgets/teams_body.dart';

class TeamsPage extends StatelessWidget implements PageWrapper {
  @override
  Widget get wrappedPage => BlocProvider<TeamsBloc>(
        create: (context) => getIt<TeamsBloc>()..add(const GetAllStarted('2')),
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return TeamsBody();
  }
}
