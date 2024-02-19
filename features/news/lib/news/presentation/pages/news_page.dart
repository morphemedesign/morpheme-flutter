import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../cubit/news_cubit.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage>
    with MorphemeStatePage<NewsPage, NewsCubit> {
  @override
  NewsCubit setCubit() => locator<NewsCubit>();

  @override
  Widget buildWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.s.news)),
      body: Center(
        child: MorphemeText.titleLarge(context.s.news),
      ),
    );
  }
}
