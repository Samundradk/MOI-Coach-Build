plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
    id("com.google.gms.google-services")
}

android {
    // 1. Namespace ra Application ID same hunu parchha (JSON file anusar)
    namespace = "Aphrodite.Codez"
    compileSdk = 35 // flutter.compileSdkVersion ko satta direct number rakhda safe hunchha

    // 2. NDK Version (Aghi ko error fix garna)
    ndkVersion = "27.0.12077973"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // 3. YO JSON FILE SANGA MATCH HUNU PARCHHA
        applicationId = "Aphrodite.Codez"
        
        // 4. Flutter variables le error diye vane yaha direct numbers rakhnuhos
        minSdk = flutter.minSdkVersion
        targetSdk = 34
        versionCode = 1
        versionName = "1.0.0"
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
