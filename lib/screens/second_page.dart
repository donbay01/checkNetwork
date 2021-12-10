import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text( 'Internet Cookies Guides',
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
              const Text('Cookie alerts have become annoying as we see them on almost every website we visit today. They sometimes stand as a barrier to our web experience, and for that reason, we permit without reading through to understand what permission we are giving to the website. Cookies were meant to improve our internet experience. In the past, websites used cookies to save user details to either remember them when the user comes back to the website or enhance the experience by suggesting more options of the things they search commonly. A company like  Google uses cookies to improve the user search experience.',  textAlign: TextAlign.justify,),
              const Text('',),
              const Text('An example is searching for universities in Glasgow that are currently admitting students. Because of the cookie on the google site, users can get pop-up ads from a university accepting students when browsing. This way, Google Improves user experience and better helps the user get the information they need. But as in recent days, things meant for good have become a significant danger for internet users. Because cookies can contain personal data like login details, passwords, and pins (which was meant to avoid constantly retyping them), hackers could have a field day when they come in contact with this personal information.',textAlign: TextAlign.justify,),
              const Text('',),
              const Text('Almost all websites use cookies, and while most are meant to better and improve our experience, it is important we read through before giving permission. A good use by websites will be saving login identities so that you dont have to type in these details again when on the site or keep credit card details, so you dont have to type in these long, confusing details every time. While these are very comforting uses by websites, we should never forget having our details (of that magnitude) on a website means exposing ourselves to cybercriminals. Below are some guides to help manage our cookie and internet sessions.',  textAlign: TextAlign.justify,),
              const Text('',),
              const Text('1. Before allowing access or permission to website cookies, read through the required consent.',),
              const Text('',),
              const Text('2. This cookie permission is usually requested when we already have our search result or interest on the page, hence playing on our intelligence to permit without scanning the content. Take note.', textAlign: TextAlign.justify,),
              const Text('',),
              const Text('3. Some cookie permission is purposely phrased to deceive you, e.g., saying NO to question-2 might lead you to question 2.1, where your answer should be YES. Using No in the said question 2.1 may automatically convert to YES in question-2 presented to you.', textAlign: TextAlign.justify,),
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