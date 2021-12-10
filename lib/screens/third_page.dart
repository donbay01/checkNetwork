import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text( 'Fake Wi-Fi Guides',
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
              const Text('Fake Wi-Fi is disguised networks created by hackers to deceive unsuspecting users into stealing their personal information or mocking them. This fake Wi-Fi has been increasing in recent days. Hackers mainly target two types of individuals:', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('(i) Individuals from an organization: Hackers create this fake Wi-Fi using the same name as the intended organization. For example, if Chris-tech is a name of an organization and their Wi-Fi network is named Chris-Tech, hackers can create Wi-Fi with the same name as the organization. The aim is to have an employer of the organization sign into the hacker network by using their login details for the original network. When this is done, the details of the employee are stored in a database created by the hacker. The hacker can then log into the original company network to either steal documents or perform privileged activities with these details.', textAlign: TextAlign.justify,),
              const  Text('',),
              const Text('(ii) Individuals from the public: Here, hackers can create fake Wi-Fi using either the same or similar name to the intended organization. For example, if ChrisFood is a restaurant or hotel and their Wi-Fi network is named ChrisFood, hackers can create Wi-Fi with the same name as the organization or something attractive like "Free_ChrisFood_Wifi" or "ChrisFood_Free-Wifi." The word Free on the name can be considered as a magnet as people tend to immediately connect to free Wi-Fi (based on our product survey result) when they see one. Depending on their intention, Hackers can either steal the personal information of the people who have signed to their Wi-Fi network or mock the said users. In most cases, the first is the intention.', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('The target discussed in number (ii) is widespread, as we have seen in many restaurants these days, especially restaurants with lots of customers (like some popular fast foods). This incident is increasing by the day as we get calls and text messages from unknown people trying to deceive us into believing there is a parcel for us and we have to pay some amount to reach the package. Some ways to stay safe on public/free Wi-Fi:', textAlign: TextAlign.justify,),
              const  Text('',),
              const Text('1. Avoid connecting to public Wi-Fi at restaurants, if possible. This way, you stay completely safe as your details or device details are not shared anyway.', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('2. Avoid authorizing or permitting the network to install or update any software, firmware, or application. This update or installation can be a ploy to install malware on your device.', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('3. When on a free network, avoid performing a task revealing your identity. A task like official works, purchasing items online using your credit/debit card details, or simply sharing your details via chat to anyone on public Wi-Fi.', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('4. Avoid logging into any of your email accounts or similar accounts. Logging to your account may expose you to some serious identity theft issues.', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('5. If possible, keep your free/public Wi-Fi activities simple as just reading news, searching locations, and checking bus/flight times. Generally, only perform actions that dont reveal your personal or mobile identity in anyways.', textAlign: TextAlign.justify,),
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