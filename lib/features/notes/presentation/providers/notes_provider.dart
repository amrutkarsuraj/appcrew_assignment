import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/providers/auth_user_provider.dart';
import '../../data/models/note_model.dart';

final notesProvider =
StreamProvider.autoDispose<List<NoteModel>>((ref) {

  final authState = ref.watch(authUserProvider);

  return authState.when(
    data: (user) {
      if (user == null) {
        return const Stream.empty();
      }

      return FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .collection('notes')
          .orderBy('updated_at', descending: true)
          .snapshots()
          .map(
            (snapshot) =>
            snapshot.docs.map((doc) => NoteModel.fromDoc(doc)).toList(),
      );
    },
    loading: () => const Stream.empty(),
    error: (_, __) => const Stream.empty(),
  );
});
