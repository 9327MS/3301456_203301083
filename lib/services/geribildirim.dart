import 'package:bitkim/pages/ekran.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FeedbackDialog extends StatefulWidget {
  const FeedbackDialog({Key? key}) : super(key: key);

  @override
  State<FeedbackDialog> createState() => _FeedbackDialogState();
}

class _FeedbackDialogState extends State<FeedbackDialog> {
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();
    return AlertDialog(
      title: Text('Geri bildirim'),

      content: Form(
        key: _formKey,
        child: TextFormField(
          controller: _controller,
          keyboardType: TextInputType.multiline,
          decoration: const InputDecoration(
            hintText: 'Görüşleriniz',
            filled: true,
          ),
          maxLines: 5,
          maxLength: 4096,
          textInputAction: TextInputAction.done,
          validator: (String? text) {
            if (text == null || text.isEmpty) {
              return 'Lütfen görüşlerinizi yazınız';
            }
            return null;
          },
        ),
      ),
      actions: [
        TextButton(
          child: const Text('İptal'),
          onPressed: () => Navigator.pop(context),
        ),
        TextButton(
          child: const Text('Gönder'),
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
              String message;
              try {
                final collection =
                     FirebaseFirestore.instance.collection('feedback');

                await collection.doc().set({
                  'tarih': FieldValue.serverTimestamp(),
                  'görüş': _controller.text,
                  'gönderen':firebaseUser.email!,
                });
                message = 'Geribildirim başarıyla gönderildi. Çok teşekkür ederiz :D ';
              } catch (e) {
                message = 'Hata geribildirim gönderilemedi, lütfen bağlantınızı kontol edin.';//+ e.toString();
              }
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(message)));
              Navigator.push(context,MaterialPageRoute(builder: (context) => ekran()),);
            }
          },
        )
      ],
    );
  }
}
