## gradle.properfies

```
org.gradle.parallel=true
org.gradle.workers.max=4
org.gradle.daemon=true
org.gradle.configureondemand=true
android.enableBuildCache=true
org.gradle.caching=true
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

    if (project.hasProperty('devBuild')){
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

```
// Initializes Fabric for builds that don't use the debug build type.
Crashlytics crashlyticsKit = new Crashlytics.Builder()
    .core(new CrashlyticsCore.Builder().disabled(BuildConfig.DEBUG).build())
    .build();

Fabric.with(this, crashlyticsKit);
```

## Compiler

```
-PdevBuild
```
