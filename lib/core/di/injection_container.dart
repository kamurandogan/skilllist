import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // External dependencies
  sl
    ..registerLazySingleton(() => FirebaseAuth.instance)
    ..registerLazySingleton(() => FirebaseFirestore.instance)
    ..registerLazySingleton(() => FirebaseStorage.instance);

  // TODO: Register feature dependencies here
  // Example:
  // _initAuth();
  // _initProfile();
  // _initProjects();
  // _initTasks();
  // _initChat();
  // _initSearch();
}

// Example of how to register a feature
// void _initAuth() {
//   // Data sources
//   sl.registerLazySingleton<AuthRemoteDataSource>(
//     () => AuthRemoteDataSourceImpl(firebaseAuth: sl()),
//   );
//
//   // Repositories
//   sl.registerLazySingleton<AuthRepository>(
//     () => AuthRepositoryImpl(remoteDataSource: sl()),
//   );
//
//   // Use cases
//   sl.registerLazySingleton(() => SignIn(sl()));
//   sl.registerLazySingleton(() => SignUp(sl()));
//   sl.registerLazySingleton(() => SignOut(sl()));
//
//   // Blocs
//   sl.registerFactory(() => AuthBloc(
//     signIn: sl(),
//     signUp: sl(),
//     signOut: sl(),
//   ));
// }
