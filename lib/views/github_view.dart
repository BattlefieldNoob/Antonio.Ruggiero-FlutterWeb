import 'package:antonio_ruggiero_website/views/repo_card.dart';
import 'package:flutter/material.dart';
import 'package:github/github.dart';

class GitHubView extends StatelessWidget {
  final githubClient = GitHub();

  GitHubView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: FutureBuilder(
            future: getMyRepos(),
            initialData: const <Repository>[],
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final data = snapshot.data!;
                return GridView.builder(
                  itemCount: data.length,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 500, childAspectRatio: 5),
                  itemBuilder: (context, index) {
                    Repository current = data[index];
                    var details =
                        "${current.stargazersCount} stars, ${current.forksCount} forks";
                    return RepoCard(
                      current.name,
                      current.htmlUrl,
                      details: details,
                    );
                  },
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }

  Future<List<Repository>> getMyRepos() {
    return githubClient.repositories
        .listUserRepositories("BattlefieldNoob")
        .toList()
        .then((value) {
      value.sort((Repository a, Repository b) =>
          b.stargazersCount.compareTo(a.stargazersCount));
      return value;
    });
  }
}
