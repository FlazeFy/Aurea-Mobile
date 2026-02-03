import 'package:aurea/core/global/style.dart';
import 'package:aurea/core/network/api_client.dart';
import 'package:aurea/features/auth/data/locals/auth_local_data_source.dart';
import 'package:aurea/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:aurea/features/auth/presentation/bloc/login_bloc.dart';
import 'package:aurea/features/auth/presentation/bloc/login_event.dart';
import 'package:aurea/features/auth/presentation/bloc/login_state.dart';
import 'package:aurea/features/auth/presentation/ui/molecules/m_login_form.dart';
import 'package:aurea/features/auth/presentation/ui/organisms/o_login_card.dart';
import 'package:aurea/features/history/data/repositories/history_repository_impl.dart';
import 'package:aurea/features/history/presentation/bloc/history_bloc.dart';
import 'package:aurea/features/history/presentation/bloc/history_event.dart';
import 'package:aurea/features/history/presentation/pages/history_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../ui/atoms/a_button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final authLocal = AuthLocalDataSource();
  late final apiClient = ApiClient(local: authLocal);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc(
        AuthRepositoryImpl(
          dio: apiClient.dio,
          local: AuthLocalDataSource(),
        ),
      ),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            left: spaceSM,
            right: spaceSM,
            bottom: spaceSM,
            top: spaceJumbo,
          ),
          child: BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              if (state is LoginSuccess) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => BlocProvider(
                      create: (_) => HistoryBloc(
                        repository: HistoryRepositoryImpl(
                          dio: apiClient.dio,
                        ),
                      )..add(FetchHistory()),
                      child: const HistoryPage(),
                    ),
                  ),
                );
              }
            },
            child: BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                return OrganismLoginCard(
                  form: MoleculeLoginForm(
                    email: emailCtrl,
                    password: passCtrl,
                  ),
                  error: state is LoginFailure
                      ? Text(
                    state.message,
                    style: const TextStyle(color: Colors.red),
                  )
                      : null,
                  actions: AtomButton(
                    text: 'Sign In',
                    onPressed: () {
                      context.read<LoginBloc>().add(
                        LoginSubmitted(
                          email: emailCtrl.text,
                          password: passCtrl.text,
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
