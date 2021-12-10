import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text( 'Safe Web Usage Guides',
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
              const Text('Here are some quick guides when on a public/free Wi-Fi network:', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('1. Only browse on HTTPS sites. This means the site is encrypted and reduces the chances of your personal information being visible to hackers.', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('2. Avoid permitting websites to perform any action on your device or access your device (e.g., camera and microphone). This might be a way of the hacker installing malicious software to your device to perform other actions beyond the one presented to you.', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('3. Avoid downloading files from untrusted sites discussed in No. 1. ', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('4. Almost all websites use cookies these days, and cookies are meant to enhance the user experience on this website. But in some cases, websites ask for permission to request our personal internet information. Should the site be hacked, it exposes us to risk as hackers can use this personal information to defraud us.', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('5. If possible, avoid shopping and sharing your credit/debit card details when on a public or free Wi-Fi network.', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('6. When on a public/free Wi-Fi network, avoid doing any work or activities that require you to give out any information about yourself. This way, you stay protected if any hacker is on the networking snooping around for vital information to be used for fraudulent or phishing mail/email to you.', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('7. Be careful when exchanging files on the internet without users you dont know too well; they may have disguised as someone they are not.', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('8. Be vigilant even when communicating with the people you know. When you notice something different, like word usage, errors, or difference in the general way of communicating in the past, the account may have been hacked, and the hacker is trying to get information from you.', textAlign: TextAlign.justify,),
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