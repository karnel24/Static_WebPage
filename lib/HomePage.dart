// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:readmore/readmore.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
   HomePage({super.key});

  String content = "Encryption and hashing are cryptographic techniques with distinct purposes and characteristics. Encryption is a reversible process that converts data into an unreadable format (ciphertext) using algorithms and keys. It is used primarily for data confidentiality, securing sensitive information during transmission or storage. Decryption with the correct key can recover the original data. Hashing, on the other hand, is a one-way process that transforms data into a fixed-length string (hash) using a hash function. It is irreversible, making it suitable for data integrity verification and password storage. Hashes are consistent, meaning the same input produces the same hash. Unlike encryption, hashing cannot be reversed to reveal the original data.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Difference Between Encryption And Hashing"),
        backgroundColor: Colors.blue[400],
        centerTitle: true, systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
    
    body:SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: ReadMoreText(content, trimLines:3, 
            textAlign: TextAlign.justify, 
            trimMode: TrimMode.Line,
            trimCollapsedText: " Show More",
            trimExpandedText: " Show Less",
            lessStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color:Colors.green[700],
            ),
            moreStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green[700],
            ),
            style: const TextStyle(
              fontSize: 16,
              height: 2,
            ),
          ),
        ),),
    );
  }
}