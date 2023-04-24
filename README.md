# FP3plus_device_profile

This repo contains the custom FairPhone 3+ profile for ARCore.

Actually it is buggy and unprecise.

If you are a noob please don't ask for help, don't ask an modified .apk or .ab (will be illegal) and ESPECIALLY don't ask Google support.

Google's ARCore staff permit to "experiment" new unofficial devices as long as you don't ask for help or official support.

If they receive requests they will remove the possibility for everyone, so please don't do it.

If you need ARCore on your FairPhone but you have not the skill don't ask help, study.

An unofficial help by FairPhone staff would be very appreciated but not pretended.

## For help me you need to:

- Have a FP3+ with Android, not ubuntu or debian or postmarketos or any GNU/Linux distro;
- If not rooted at all run android 11 or be very good on inventive (https://developer.android.com/about/versions/12/behavior-changes-12#adb-backup-restrictions);
- If run android 12 or upper, have root on adb (LineageOS debug option for example) is ok, else need root;
- Be an expert user, with knowledge of adb and logcat;
- Have or create a Github account;
- Basic (or better advanced) knowledge about image format, optic and camera (I totally lack this, I'm starting to study from 0).

## How To Help:

First
- Fork this repository;
- Install ARCore on your FP3+ (I have installed fekened the Pixel 3a that is similar by hardware);

IF unrooted on Android 11 or older
- Backup google.ar.core on your PC;
- Modify the backup with [abe](//github.com/nelenkov/android-backup-extractor);
- Add the custom device profile a directory named f;
- Repack CORRECTLY the modified backup;
- "Restore" the modified backup of ARCore;

IF rooted adb (Android 12 or later)
- adb root
- adb push device_profile_FP3+.textproto /data/data/com.google.ar.core/files/custom_device_profile.textproto

Then
- Run app that use ARCore and verify functionality of it;
- Read logcat and try to change the custom_device_profile;
- Please be verbose on commit, try to explain what you do and why;
- Re-modify the backup with new changed custom device profile;
- Verify if the changes improve quality and reduce bug;
- If you find that changing a value improve stability and (possibly) quality make a PR.

## Current status

ARCore run, depth API disabled.
Buggy and imprecise, need more calibration.

If you use ARCore witha an app the app frezee/stop working.

Google's ARCore on FP3+ is VERY experimental and can be VERY instable, I'm obviously not responsable on any damage on both hardware or software side.

I don't know if this config can "brick" your phone. So you have to suppose it can.

Also if you have problem you cannot ask at anyone, create a complete backup first to hack your FirePhone 3+.


## User privacy requirements

This config file is used by the proprietary app [Google Play Services for AR](//play.google.com/store/apps/details?id=com.google.ar.core) (ARCore),
which is provided by Google LLC and governed by the [Google Privacy Policy](//policies.google.com/privacy).

See the [User privacy requirements](https://developers.google.com/ar/develop/privacy-requirements).


## Final considerations

For me is impossible to make ARCore run correctly on FP3+ alone, but unity is strength.

Honestly I want to use ARCore for gain AR+ on Pokémon GO app, so I don't need a perfect calibration,
I want stability above quality, but better (possible) accuracy is desirable.

If there will be enough contributions, maybe I could split the configuration into stable and unstable.

Good hacking to all.

A free (libre) implementation of ARCore would be MUCH better, but totally impossible for me.