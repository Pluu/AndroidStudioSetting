## gradle.properfies

- org.gradle.parallel=true
- org.gradle.workers.max=4
- org.gradle.daemon=true
- org.gradle.configureondemand=true

- android.enableBuildCache=true

## build.gradle

android {
    buildTypes {
        debug {
            ext.enableCrashlytics = false
            ext.alwaysUpdateBuildId = false
        }
    }

    if (project.hasProperty('devDebug')){
        splits.abi.enable = false
        splits.density.enable = false
        aaptOptions.cruncherEnabled = false
    }
}

kapt {
    useBuildCache = true
}
