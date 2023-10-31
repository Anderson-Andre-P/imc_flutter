<!---
Titulo: imc_flutter
Nome do repositório: imc_flutter
Data do upload: 05.10.23
Cor do badge: 3D7BF7
-->

<h1 align="center">IMC Flutter</h1>

<p align="center">
  <a href="https://github.com/Anderson-Andre-P/imc_flutter">
    <img alt="Made by Anderson André" src="https://img.shields.io/badge/-Github-3D7BF7?style=for-the-badge&logo=Github&logoColor=white&link=https://github.com/Anderson-Andre-P" />
  </a>
  <a href="https://www.linkedin.com/in/anderson-andre-pereira/">
      <img alt="Anderson André" src="https://img.shields.io/badge/-Anderson%20André-3D7BF7?style=for-the-badge&logo=Linkedin&logoColor=white" />
   </a>
  <img alt="Repository size" src="https://img.shields.io/github/repo-size/Anderson-Andre-P/imc_flutter?style=for-the-badge&label=Repo%20Size:&labelColor=3D7BF7&color=3D7BF7">
  </p>

  <p align="center">
    <img src="https://img.shields.io/badge/imc_flutter-31.10.2023-3D7BF7?style=for-the-badge&labelColor=3D7BF7">
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/Anderson-Andre-P/imc_flutter?style=for-the-badge&label=last%20commit:&labelColor=3D7BF7&color=3D7BF7">
    <img alt="License" src="https://img.shields.io/badge/license-MIT-3D7BF7?style=for-the-badge&labelColor=3D7BF7&color=3D7BF7">
</p>

<p align="center">
  <a href="#dart-about">About</a> &#xa0; | &#xa0; 
  <a href="#rocket-technologies">Technologies</a> &#xa0; | &#xa0;
  <a href="#white_check_mark-how-to-contribute">How to Contribute</a> &#xa0; | &#xa0;
  <a href="#checkered_flag-executing-project">Executing Project</a> &#xa0; | &#xa0;
  <a href="#memo-license">License</a> &#xa0; | &#xa0;
  <a href="https://github.com/Anderson-Andre-P" target="_blank">Author</a>
</p>

## :link: Demo

<details>

<summary>Click me for see a demo image</summary>

|              Dark Home Screen              |               Dark Configs Screen                |                Light Configs Screen                |
| :----------------------------------------: | :----------------------------------------------: | :------------------------------------------------: |
| ![Dark Home Screen](/images/dark_home.png) | ![Dark Configs Screen](/images/dark_configs.png) | ![Light Configs Screen](/images/light_configs.png) |

|            Splash Screen             |           Menu Screen            |                Menu Screen                |
| :----------------------------------: | :------------------------------: | :---------------------------------------: |
| ![Splash Screen](/images/splash.png) | ![Menu Screen](/images/menu.png) | ![Result Screen](/images/dark_result.png) |

</details>

## :dart: About

**"IMC_Flutter"** is your definitive app to track and improve your health in a simple and effective way. With a modern and user-friendly interface, **"IMC_Flutter"** allows you to calculate your Body Mass Index (BMI) in a matter of seconds, providing valuable insights into your physical condition.

#### Functionalities

1. **Quick BMI Calculator:** Enter your personal details such as weight and height and immediately get your BMI.

2. **Interpretation of Results:** Find out which weight range your BMI falls into and what that means for your health.

3. **Easy Customization:** Adjust the settings to your preferences, choosing between light and dark themes, as well as the unit of measurement and weight of your choice.

4. **Ideal Weight:** Find out what the ideal weight is for your body based on your BMI.

5. **Health Tracking:** Keep a record of your BMI changes over time to check your progress toward a healthier life.

#### Main Achievements

- [x] Development with clean code
- [x] Development with user friendly design

## :rocket: Technologies

The project was developed using the following technologies and tools:

### Mobile

```
  icons_launcher: ^2.1.4
  font_awesome_flutter: ^10.4.0
  animated_text_kit: ^4.2.2
  shared_preferences: ^2.1.1
  share_plus: ^7.0.2
  launch_review: ^3.0.1
  url_launcher: ^6.1.11
  package_info_plus: ^4.0.2
  cupertino_icons: ^1.0.5
  provider: ^6.0.5
  firebase_core: ^2.4.1
  firebase_crashlytics: ^3.0.11
  firebase_analytics: ^10.1.0
```

## :white_check_mark: How to Contribute

If you want to contribute to the project, you can follow these steps:

### Step 1

Fork this repository and clone it to your local machine using the code bellow.

```bash
https://github.com/Anderson-Andre-P/imc_flutter
```

### Step 2

Create a project in Firebase and run the commands below:

#### 1. Install the Official Firebase CLI - `flutterfire_cli` requires the official Firebase CLI. Make sure the Firebase CLI is installed

```bash
npm install -g firebase-tools
```

#### 2. Log in to Firebase: Before setting up your Flutter project, log in to your Firebase account

```bash
firebase login
```

#### 3. Install FlutterFire CL: Now, you need to install `flutterfire_cli`

```bash
dart pub global activate flutterfire_cli
```

#### 4. Set up your Flutter Project with Firebase: To set up your Flutter project with Firebase, follow these steps:

##### 4.1. Go to the root directory of your Flutter project

```bash
cd /path/to/your/project
```

##### 4.2. Run the `flutterfire configure` command specifying the Firebase project you want to configure (replace `your-firebase-project` with the name of your Firebase project):

```bash
flutterfire configure --project=your-firebase-project
```

##### 4.3. `flutterfire_cli` will automatically detect the configuration and guide you through several steps. Follow the instructions and answer the necessary questions.

##### 4.4. `flutterfire_cli` will configure Firebase configuration keys in your Flutter project.

### Step 3

Test the Configuration.

```bash
flutter run
```

### Step 4

Create a new branch with a descriptive name for your contribution.

```bash
git checkout -b my-feature
```

### Step 5

Implement your modifications or additions.

### Step 6

Perform the necessary tests to ensure that your changes work properly.

### Step 7

Commit your changes and push them to your repository.

```bash
git commit -m "feat: My new feature"
```

### Step 8

Open a pull request against this repository, describing your changes and providing additional information if needed.

After your Pull Request is merged, can you delete your feature branch.

## :checkered_flag: Executing Project

Before running :checkered_flag:, you need [Git](https://git-scm.com) installed.

Follow the steps below to run the project on your computer. (using terminal or git bash)

```bash
 # Cloning the repository
$ git clone git@github.com:Anderson-Andre-P/imc_flutter.git

# Accessing THIS project directory
$ cd './imc_flutter'

# Installing the dependencies
$ flutter pub get

# Run project
$ flutter run
```

## Contact

If you have any questions or suggestions about the project, please feel free to contact us. You can find us at [provide contact information such as email address or link to a communication channel]. Thank you for your interest and support for the project!

- Contact me through my personal LinkedIn profile.

  <a href="https://www.linkedin.com/in/anderson-andre-pereira/">
  <img alt="Anderson André" src="https://img.shields.io/badge/-Anderson%20André-3D7BF7?style=for-the-badge&logo=Linkedin&logoColor=white" />
  </a>

<!-- &#xa0; -->

## :memo: License

This project is licensed under [LICENSE](LICENSE). Be sure to read the license file for more details.

<a href="#top">Back to top</a>
