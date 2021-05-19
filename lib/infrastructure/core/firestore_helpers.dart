import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dddcourse/domain/auth/i_auth_facade.dart';
import 'package:dddcourse/domain/core/errors.dart';
import 'package:dddcourse/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference<Map<String, dynamic>>> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference<Map<String, dynamic>> get noteCollection =>
      collection('notes');
}
