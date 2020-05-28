Getting Started
===============

GirlScript Community App is a center to various events ranging from portraying the member's achievements to announcing the upcoming oppurtunities. Additionally, this app is developed by the community and for the community. So, this app is an open source project for creating an app for various events. This app shall serve as a boilerplate making app for events with certain modifications to the content specific to the chapter. 

Prerequisites
-------------

To modify this app for other events, litte knowledge of `git <https://git-scm.com/>`_ and `GitHub <https://help.github.com/en/github/getting-started-with-github>`_ is required to get the source code of the boilerplate which is hosted in this `Github Repository <https://github.com/smaranjitghose/girlscript_app>`_.

Although the app is built using the popular mobile framework `Flutter <https://flutter.dev/>`_ and `Dart <https://dart.dev/>`_ programming language. No knowledge of flutter and dart is required. 

Download/ Clone the Source Code
-------------------------------

At first, you have to download/ clone the source code to your local machine `from here <https://github.com/smaranjitghose/girlscript_app>`_.

Project Structure
-----------------

Here is the folder structure of the whole project: 


| girlscript_app
| ├── .github
| ├── MockUp
| ├── community_app_boilerplate
| ├── .gitattributes
| ├── CODE_OF_CONDUCT.md
| ├── LICENSE
| └── README.md

In the above folder structure, 

- ``girlscript_app`` is the folder of the whole project. 
- ``girlscript_app/community_app_boilerplate`` is the directory where the source code for the boilerplate will reside.

Here is the folder structure of the ``community_app_boilerplate``

| community_app_boilerplate
| ├── android
| ├── assets
| ├── ios
| ├── lib
| │   ├── services
| │   ├── ui
| │   │   └──screens
| │   ├── app.dart
| │   └── main.dart
| └── test

Now, lets dive into the lib folder of the girlscript app which has the main code for the application.

- ``lib`` : Contains the overall logic of the application. 
- ``lib/services`` : Contains the services of the app such as notification_service lies here.
- ``lib/ui`` : Contains all the ui of the project, and contains the subdirectory for each screen.
- ``lib/main.dart`` : This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.

Setting up the Project Environment
----------------------------------

To modify and test the girlscript_app, you have to follow the following steps: 

- Download and install `Flutter SDK <https://flutter.dev/docs/get-started/install>`_.
- Download or set up your favorite IDE for the development process. Some preferred IDEs are: `Android Studio <https://developer.android.com/studio/install>`_ and `Visual Studio Code <https://code.visualstudio.com/download>`_.
- Open the girlscript app in your preferred IDE for modification.

After setting up the project environmnet, you can head over to the `Home Section <home.html>`_ of the documentation to modify the app according to your wish. 

External Resources
------------------

Here are some external resources to help you set up development environment. 

* `Setting up the Flutter development environment`_
* `How to setup Flutter`_


.. _Setting up the Flutter development environment: https://medium.com/codingthesmartway-com-blog/getting-started-with-flutter-1-setting-up-the-development-environment-9428031991e2
.. _How to setup Flutter: https://medium.com/mobile-app-developers/how-to-setup-flutter-f70a6b21997f