## gradle.properfies

```
org.gradle.jvmargs=-Xmx4g -XX:MaxPermSize=1g -XX:+HeapDumpOnOutOfMemoryError -Dfile.encoding=UTF-8 -XX:+UseConcMarkSweepGC
org.gradle.caching=true
org.gradle.configureondemand=true
org.gradle.daemon=true
org.gradle.parallel=true

android.enableBuildCache=true
android.enableD8=true
android.enableR8=true
android.enableR8.fullMode=true
android.enableD8.desugaring=true
android.databinding.enableV2=true
android.namespacedRClass=true
android.enableSeparateAnnotationProcessing=true

kotlin.incremental=true
kotlin.incremental.usePreciseJavaTracking=true
kapt.use.worker.api=true
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
    
    lintOptions {
//      check 'Interoperability'
//      checkDependencies true
        ignoreTestSources true
    }
    
    dexOptions {
        preDexLibraries true
//      javaMaxHeapSize "4G"
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
