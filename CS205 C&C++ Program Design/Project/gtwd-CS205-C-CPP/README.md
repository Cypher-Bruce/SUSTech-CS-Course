# GTWD

> **G**lobal **T**ranscoder for **W**AV/FLAC/AIFF **D**ata

By: [@RoderickQiu](https://github.com/RoderickQiu), [@CypherBruce](https://github.com/Cypher-Bruce), [@SheepDoctor](https://github.com/SheepDoctor)

## Description

This project is a command line tool for converting audio files between different formats built using C++, supporting
RAW, WAV, FLAC and AIFF.

### What we made

- Basic parts
    - **Metadata display & edit for FLAC**, `type 0 (STREAMINFO)` and `type 4 (VORBIS_COMMENT)`.
    - **RAW to WAV convertor support**, with file info contained in `INI` format.
    - **WAV to FLAC convertor support**, using `verbatim predictor` with channel assignment of `2 channels: left`,
      with `STREAMINFO` and `VORBIS_COMMENT` metadata, 16Bit int or 24Bit int.
    - **FLAC to WAV convertor support**, with `STREAMINFO` and `VORBIS_COMMENT` metadata and `verbatim subframes`.
    - **WAV to RAW convertor support**.
- Bonus parts
    - **Excellent Project Management**.
        - We use `git` and `GitHub` to manage our project, with clear commit messages.
        - We use `CLion` as our IDE, and have a unified code formatter ruleset.
        - We use `CMake` to build our project.
    - **More Metadata Block Types**.
        - Parsing and editing support for `PADDING` block, and it will be shortened if the previous block enlarges.
        - Parsing support for `APPLICATION` and `SEEKTABLE` block.
            - Here we didn't implement editing support for application and seek table blocks, because we think it is
              only meaningful to edit them when the project also works as a FLAC editor.
    - **Extreme Robustness**.
        - `MD5` signature and `CRC` check support.
        - Exception handling and memory management optimizations.
        - Passed `Google Sanitizer` check with no warnings.
    - **GUI**.
        - Support for all functions of this app.
        - Should support both Windows and macOS.
        - With an elegant and intuitive interface.
    - **More Audio Formats**.
        - **Extra support for AIFF file format. Cool!**
    - **Anything You Regard as "Bonus"**.
        - **Various playing speed!**
            - Slowing done or fasting the audio are supported!

### Contributions

- [RoderickQiu](https://github.com/RoderickQiu) (A): Project structure, Flac metadata reading and editing, AIFF
  conversion, GUI.
- [SheepDoctor](https://github.com/SheepDoctor) (A): RAW conversion, WAV to FLAC conversion, File IO supporter lib.
- [Cypher-Bruce](https://github.com/Cypher-Bruce) (A): FLAC to WAV conversion, CRC and MD5 signature support, File IO
  supporter lib.

## Usage

### Build

```bash
cmake .
make
```

Should work for both Windows, macOS and Linux.

### Arguments

- For all modes:
    - `-m` or `--mode`:
        - `w2f` for wav to flac
        - `f2w` for flac to wav
        - `f2r` for flac to raw
        - `r2f` for raw to flac
        - `r2w` for raw to wav
        - `w2r` for wav to raw
        - `w2a` for wav to aiff
        - `a2w` for aiff to wav
        - `a2f` for aiff to flac
        - `f2a` for flac to aiff
        - `a2r` for aiff to raw
        - `r2a` for raw to aiff
        - `fm` for flac meta data reading
        - `fe` for flac meta data editing
    - `-i` or `--input`: input file path
    - `-o` or `--output`: output file path
    - `-t` or `--temp`: manually indicate a preferred temp directory
- For `raw` input files (e.g. `r2w`, `r2f`):
    - `-c` or `--config`: config ini file path for `raw` files
- For `w2f` mode only:
    - `-v` or `--velocity`: play speed
        - argument is the speed od the output file
        - a float number between 0 and 1
- For `fe` mode (Flac meta data editing):
    - `-mv` or `--modify-vendor`: modify vendor
        - argument is the vendor string to modify
    - `-mc` or `--modify-comment`: modify comment
        - need two arguments
            - the first one is the comment content
            - the second one is the comment index to delete
    - `-ac` or `--append-comment`: append comment
        - argument is the comment content to append
        - if you have multiple comments, use a simple `;` without space to split
    - `-rc` or `--remove-comment`: remove comment
        - argument is the comment index to remove

### Typical Usage

We suggest that testers use absolute paths for the input and output files.

```bash
# flac meta data editing
gtwd -m fe -i yourPathToInputFlac -o yourPathToOutputFlac -mv newVendor -ac yourCommentToAppend

# flac meta data reading
gtwd -m fm -i yourPathToInputFlac

# convert raw to wav (ovs.pcm)
gtwd -m r2w -i yourPathToInputRaw -o yourPathToOutputWav -c yourPathToCorrespondingIni

# convert wav to flac (ovs.wav)
gtwd -m w2f -i yourPathToInputWav -o yourPathToOutputFlac -mv yourVendor -ac yourCommentToAppend

# convert flac to wav (ovs.flac)
gtwd -m f2w -i yourPathToInputFlac -o yourPathToOutputWav

# convert flac to raw (ovs.flac)
gtwd -m f2r -i yourPathToInputFlac -o yourPathToOutputRaw

# convert: aiff to flac (ovs.aiff)
gtwd -m a2f -i yourPathToInputAiff -o yourPathToOutputFlac
```

If it is reported that "Error getting temp folder from environment variables" when executing `gtwd`, please manually
add `-t` flag to the command line to indicate a preferred temp folder. It is because the default temp folder is not
available in some environments.

```bash
gtwd -m f2w -i yourPathToInputFlac -o yourPathToOutputWav -t yourTempPath
```

### Provided Examples

- RAW -> WAV -> FLAC
    - `ProvidedDocuments/raw/ovs.pcm` with `ProvidedDocuments/raw/ovs.ini`
    - `ProvidedDocuments/wav/ovs.wav`
- FLAC -> WAV -> RAW
    - `ProvidedDocuments/flac/ovs.flac`
    - `ProvidedDocuments/wav/ovs.wav`
- More Metadata
    - `ProvidedDocuments/metadata/application.flac` for `APPLICATION`, `ProvidedDocuments/raw/seektable.flac`
      for `SEEKTABLE`
      and `ProvidedDocuments/raw/padding.flac` for `PADDING` blocks
- AIFF
    - `ProvidedDocuments/aiff/mint16.aif`, `ProvidedDocuments/aiff/mint24.aif` and `ProvidedDocuments/aiff/mint32.aif`,
      each with different bit depth
    - `ProvidedDocuments/aiff/ovs.aiff`
- Different Velocity
    - `ProvidedDocuments/wav/ovs.wav`
- Robustness Test
    - `ProvidedDocuments/robust/*`

### GUI Usage

The GUI is built using `Electron`, so you need to install `Node.js` first, and run the following commands.

```bash
cd Gui
npm install
npm run start
```

The GUI is intuitive to use, and support all formats. View a screenshot of it
at [here](https://chore-1259749012.cos.ap-hongkong.myqcloud.com/%E6%88%AA%E5%B1%8F2024-01-09%2023.07.31-9-23-12-21.png).

If you are not using `Windows x86_64` or `macOS arm64`, you may need to alternate the executive of `gtwd` used, which is
put under `Gui/exec` folder.

If you cannot install `electron` due to the limit of your network, you can use the following commands to indicate an
alternative source:

```bash
npm config set registry https://registry.npm.taobao.org
npm config set disturl https://npm.taobao.org/dist
npm config set electron_mirror https://npm.taobao.org/mirrors/electron/
```

## Acknoledgement

In this project, we have used the following open source libraries:

- [Clipp](https://github.com/muellan/clipp) - cross-platform command line interfaces for modern C++.
    - Licensed under the [MIT License](http://opensource.org/licenses/MIT).
    - Copyright (c) 2017-2018 [André MÜLLER](mailto:foss@andremueller-online.de).
- [SimpleIni](https://github.com/brofield/simpleini) - allows an INI-style configuration file to be used on both
  Windows and Linux/Unix.
    - Licensed under the [MIT License](http://opensource.org/licenses/MIT).
    - Copyright (c) 2013-2023 [Brodie THIESFIELD](https://github.com/brofield).
    - Using `ConvertUTF` in the lib.
        - Copyright 2001-2004 [Unicode Inc](https://home.unicode.org/).

Also, in this project, we use `CLion` as our IDE, thanks to their free educational plan.

**Thanks for Prof. Feng ZHENG for his C++ class. Thanks for the efforts of TAs of the class, especially Kangrui CHEN and
Site FAN.**

## Last but not least

_You may ask why the project is named **GTWD**?_

It actually originated in the famous saying:

> **GuTao[[1]](https://github.com/GuTaoZi)** tastes good, no need for salt.