import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repository_provider/ui/home.dart';
import 'package:repository_provider/bloc/user_bloc.dart';
import 'package:repository_provider/data/provider/user_provider.dart';
import 'package:repository_provider/data/repository/user_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Displaying Data from API using Flutter Bloc',
      home: RepositoryProvider(
        create: (context) => UserRepository(UserProvider()),
        child: BlocProvider(
          create: (context) => UserBloc(context.read<UserRepository>()),
          child: const MyHomeScreen(),
        ),
      ),
    );
  }
}
