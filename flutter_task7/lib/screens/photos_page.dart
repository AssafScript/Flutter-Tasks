import 'package:flutter/material.dart';
import 'package:api_sample/bloc/Photos/photos_cubit.dart';
import 'package:api_sample/bloc/Photos/photos_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhotosPage extends StatefulWidget {
  const PhotosPage({super.key});

  @override
  State<PhotosPage> createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PhotosCubit()..getAllPhotos(),
      child: BlocConsumer<PhotosCubit, PhotosState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = PhotosCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text('PhotosPage'),
              backgroundColor: Colors.blue,
            ),
            body: isEmpty(cubit),
          );
        },
      ),
    );
  }
}

Widget isEmpty(var cubit) {
  if (cubit.photos.total != 0) {
    return ListView.builder(
      itemCount: cubit.photos.hits.length,
      itemBuilder: (context, index) => Card(
        child: Image.network(
          cubit.photos.hits[index].largeImageURL,
        ),
      ),
    );
  }
  return const Center(
    child: CircularProgressIndicator(
      color: Colors.blue,
    ),
  );
}
