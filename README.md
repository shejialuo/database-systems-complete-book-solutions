# Database systems: the complete book

This is my solutions for Database systems: the complete book 2nd.

Shield: [![CC BY-NC-SA 4.0][cc-by-nc-sa-shield]][cc-by-nc-sa]

This work is licensed under a
[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License][cc-by-nc-sa].

[![CC BY-NC-SA 4.0][cc-by-nc-sa-image]][cc-by-nc-sa]

[cc-by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/4.0/
[cc-by-nc-sa-image]: https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png
[cc-by-nc-sa-shield]: https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg

## Build

This project uses `CMake` for building the latex files. And you should use `xelatex` to build.
So at first, you need to setup the environment of the `latex` and `xelatex`. If you don't want
to build for yourself, you could download the PDF at the RELEASE page.

This project uses [FiraCode](https://github.com/tonsky/FiraCode) for code font, You need to install the code in your system for building.

```sh
mkdir build && cd build && cmake .. && cmake --build .
```

And in `build` directory you can find `main.pdf`.

## Development setup

If you want to setup the development environment and change anything you want. I recommend you
to use VsCode as the editor. You should download extensions
[LaTex Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop).
After you install the extensions, you can easily do whatever you want. And of course, you can
build any sections. However, with `CMake`, you can just only build the whole project.

When you use VsCode Latex Workshop to build the files, there will be many temp files. Although
you can use Latex Workshop to clean the files. However, it is tedious. So I write a simple
shell script to clean the files. You can use the following command to make your life easier.

```sh
bash clean.sh
```
