# RmTM

This repo contains the source code and the loadable binary of _RmTM_, a small utility to take down the CDTV trademark screen on boot. This is _NOT_ the original Commodore binary. It is a freely distributable re-implementation of the _RmTM_ command, which is functionally identical.

## Intended purpose
This freely distributable re-implementation of _RmTM_ has been created so you don't need to use the copyrighted original _RmTM_ command, which would technically require a license from the current copyright owner to use. You can use this version of _RmTM_ freely to distribute CDTV ISOs in any way you see fit.

Note: you still need the copyrighted `CDTV.tm` file to make bootable CDTV ISOs on anything older than CDTV OS 2.35. There is no way around that, at the moment. I fully realize that, at first glance, this might make the existence of this free implementation of _RmTM_ seem pointless, but there are use cases and benefits.

- You can distribute a "clean" CDTV ISO without the `CDTV.tm` file and ask end users to supply the `CDTV.tm` file and provide a script to inject it into the ISO.
- Having a freely distributable _RmTM_ is one less file that end users need to provide for your clean ISO.
- You can always call _RmTM_ from your startup-sequence. On non-CDTV systems, it just exits cleanly. This makes the development and build process of CDTV titles simpler.
- It's 10 times smaller in size than Commodore's _RmTM_ ;-)

## How to build or install RmTM

_RmTM_ comes as a standalone binary that you can install and run anywhere. It is compatible with Kickstart 1.3 and higher.

Download the latest release, including source code, from the releases page.

You can also build _RmTM_ yourself:

```
ENVIRONMENT=release make rmtm
```

The build will be available in `build/rmtm`.

Note: You need the Amiga NDK to build the project.
