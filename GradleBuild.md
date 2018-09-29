## gradle.properfies

```
org.gradle.jvmargs=-Xmx2g -XX:MaxPermSize=512m -XX:+HeapDumpOnOutOfMemoryError -Dfile.encoding=UTF-8
org.gradle.caching=true
org.gradle.configureondemand=true
org.gradle.daemon=true
org.gradle.parallel=true
org.gradle.workers.max=4 // Option

android.enableR8=true // AS 3.3 or Higher
android.enableD8.desugaring=true // AS 3.3 or Higher
android.enableBuildCache=true
```

## build.gradle

```
android {
    buildTypes {
        debug {
            ext.enableCrashlytics = false
            ext.alwaysUpdateBuildId = false
        }
    }
    
    dexOptions {
        preDexLibraries true
        javaMaxHeapSize "4G"
    }

    if (project.hasProperty('devBuild')) {
        splits.abi.enable = false
        splits.density.enable = false
        aaptOptions.cruncherEnabled = false
    }
}

kapt {
    useBuildCache = true
}
```

## Crashlytics

```kotlin
// Initializes Fabric for builds that don't use the debug build type.
val crashlyticsKit = Crashlytics.Builder()
    .core(CrashlyticsCore.Builder().disabled(BuildConfig.DEBUG).build())
    .build()

Fabric.with(this, crashlyticsKit)
```

## Gradle - Compiler

```
-PdevBuild
```
