import 'package:aurea/core/global/style.dart';
import 'package:aurea/core/network/api_client.dart';
import 'package:aurea/features/auth/data/locals/auth_local_data_source.dart';
import 'package:aurea/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:aurea/features/auth/presentation/bloc/login_bloc.dart';
import 'package:aurea/features/auth/presentation/bloc/login_event.dart';
import 'package:aurea/features/auth/presentation/bloc/login_state.dart';
import 'package:aurea/features/auth/presentation/ui/molecules/m_login_form.dart';
import 'package:aurea/features/auth/presentation/ui/organisms/o_login_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../ui/atoms/a_button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc(
        AuthRepositoryImpl(
          dio: ApiClient().dio,
          local: AuthLocalDataSource(),
        ),
      ),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: spaceSM, bottom: spaceSM, right: spaceSM, top: spaceJumbo),
          child: BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              return OrganismLoginCard(
                form: MoleculeLoginForm(
                  email: emailCtrl,
                  password: passCtrl,
                ),
                error: state is LoginFailure
                    ? Text(state.message, style: const TextStyle(color: Colors.red))
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
    );
  }
}
