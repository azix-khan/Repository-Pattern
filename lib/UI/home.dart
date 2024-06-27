import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repository_provider/bloc/user_bloc.dart';
import 'package:repository_provider/bloc/user_state.dart';
import 'package:repository_provider/data/model/user_model.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Repository Provider"),
      ),
      body: BlocBuilder<UserBloc, UserState>(builder: (context, state) {
        if (state is UserLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is UserErrorState) {
          return const Center(
            child: Text("Error"),
          );
        }
        if (state is UserSuccessState) {
          // Datum defined in userModel
          List<Datum> userList = state.userModel.data;
          return userList.isNotEmpty
              ? ListView.builder(itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsetsDirectional.symmetric(
                          vertical: 4, horizontal: 8),
                      child: Card(
                        child: ListTile(
                          title: Text(
                              "${userList[index].firstName} ${userList[index].lastName}"),
                          subtitle: Text(userList[index].email),
                          leading: CircleAvatar(
                            backgroundImage:
                                NetworkImage(userList[index].avatar.toString()),
                          ),
                        ),
                      ));
                })
              : const Center(
                  child: Text("No Data Found"),
                );
        }

        return const SizedBox();
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
