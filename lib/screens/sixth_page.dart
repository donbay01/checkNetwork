import 'package:flutter/material.dart';

class SixthPage extends StatelessWidget {
  const SixthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text( 'Web Security Guides',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Free Wi-Fi is a blessing in our modern-day as it means more/unlimited time access to the internet. However, while it is fun to browse and work on a free Wi-Fi connection, it is essential to note that this Wi-Fi network may not be secured or may be a fake Wi-Fi network. Hackers design fake Wi-Fi networks to look like the original network to the user. These disguised networks are significant threats to our personal information as hackers can use different methods to steal this information from us. An example is going to a restaurant, and after switching on your Wi-Fi, you find out there are other Wi-Fi connections with a similar name to the restaurant or hotel. These fake Wi-Fi are common in public places with lots of people or users who may be in urgent need of internet data to attend to work/pleasure activities. These public places include airports, Bus/Train stations, hotels, Restaurants, Airbnb apartments, fast food, coffee shops, etc.  Here are some guides to stay safe when on a public/free Wi-Fi connection.', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('1. Avoid installing unauthorized software/applications or Updates. After connecting to the public/free Wi-Fi, avoid installing any application or performing any update on your device when prompted to do so, especially if you dont recognize the application in question.', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('2. When on the Web, only browse on HTTPS: sites. Make sure there is a padlock sign beside the web address. This padlock means the site is encrypted and can not be seen by anyone monitoring your connection.', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('3. Encrypt a file before sharing. Encrypting a file makes it unreadable even if an unauthorized entity intercepts it.', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('4. Avoid online shopping that requires you to input your credit/debit card details—if possible, avoid purchasing things using your credit/debit card when on a public Wi-Fi connection. This protects you as software like keylogger can steal entered pins and passwords.', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('5. Avoid sharing your details in chats while on public/free Wi-Fi. Suppose a hacker is monitoring a Wi-Fi network; the hacker can use some tools to get unencrypted messages like chats and mobile messages, so avoiding sending these details in the first place can guarantee safety.', textAlign: TextAlign.justify,),
              const Text('',),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Return'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}