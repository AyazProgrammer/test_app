import 'package:flutter/material.dart';
import 'package:interview/presentation/viewmodel/user_viewmodel.dart';
import 'package:provider/provider.dart';


class UserLlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<UserViewmodel>(context);

    if (viewModel.users.isEmpty && !viewModel.isLoading) {
      viewModel.fetchUsers();
    }

    return Scaffold(
      appBar: AppBar(title: Text("Users")),
      body: viewModel.isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: viewModel.users.length,
        itemBuilder: (context, index) {
          final users= viewModel.users[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                SizedBox(height: 8),
                Text(
                  style: TextStyle(fontSize: 14),
                  users.id.toString()
                ),
                Text(
                    style: TextStyle(fontSize: 14),
                    users.name.toString()
                ),
                Text(
                    style: TextStyle(fontSize: 14),
                    users.website.toString()
                ),
                Text(
                    style: TextStyle(fontSize: 14),
                    users.phone.toString()
                ),
                Text(
                    style: TextStyle(fontSize: 14),
                    users.address!.city.toString()
                ),
                Text(
                    style: TextStyle(fontSize: 14),
                    users.address!.geo.toString()
                ),
                Text(
                    style: TextStyle(fontSize: 14),
                    users.email.toString()
                ),
                Text(
                    style: TextStyle(fontSize: 14),
                    users.company.toString()
                ),
                SizedBox(height: 8),

              ],
            ),
          );
        },
      ),
    );
  }
}