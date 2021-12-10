import 'package:flutter/material.dart';

class FifthPage extends StatelessWidget {
  const FifthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text( 'Malware Guides',
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
              const Text('Malware is software developed by hackers to access a system (device or network). Malware can be a piece of code or a program which when executed by the user, can cause the hacker to gain control of your device or destroy your device depending on the intended result. A prevalent type of malware used by hackers is a keylogger. Keylogger is software that users can install on their devices without them knowing. Depending on their assigned task, this keylogger can steal your keyboard inputs such as passwords, credit/debit card number, credit/debit card pin, and other personal information. Some keyloggers can also have access to your device camera and microphone and regularly take snapshots of your screen.', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('In the past, keyloggers had ways of suggesting their presence in devices. Some of these ways include slowing down operations on the device (like opening applications or trying to surf the web and it drags or is slow), lags when typing, or practically surfacing when a simple search is done. Now its a bit difficult to detect one as sophisticated keyloggers have been developed that cants be seen quickly and can reinstall themself when noticed and uninstalled by the device owner/user. ', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('Guides to avoid Malware attacks:', textAlign: TextAlign.justify,),
              const Text('1. Avoid installing a new program when prompted by the network, e.g., boost your Wi-Fi strength, as this may be a ploy to install software for another purpose to your device.', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('2. Avoid updating programs, applications (APPS), or software on a public Wi-Fi network. When you get prompts informing you to update software to improve network quality or firmware, be careful as this can be a way of infecting your device.', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('3. Avoid authorizing or giving access to programs, applications (APPS), or software to access your device. This is a widespread pattern by hackers. They push up this malware when you are about to get a piece of information you are searching for; because you focus on your work, you click "Allow" or "Permit" and grant access to malicious programs/software unknown to you.', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('4. Remember to always check for the padlock (HTTPS://) sign when accessing a website. This sign means the site is encrypted, and the pin and password entered by you are hidden.', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('5. Be careful when opening files and attachments sent to you (either email or social media) from known and unknown accounts.', textAlign: TextAlign.justify,),
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