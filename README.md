# Personal LaTeX Classes for Notes and HW

[![forthebadge](https://forthebadge.com/images/badges/powered-by-black-magic.svg)](http://forthebadge.com)

**Author:** Rushil Mallarapu

## Installing the class
Drag the `.cls` file into your the folder of your current LaTeX project. If you want the class to be available for all projects on your system, drag the `.cls` file into your LaTeX document tree (your `texmf` folder). Note that this might be different depending on different versions of TeX. On Mac, find your `texmf` folder by running `kpsewhich -var-value=TEXMFHOME`. Then, directory `.../texmf/tex/latex/notes` to a `notes` folder which will hold the `.cls` file. 

## Organization

`notes.cls` has the formatting and biblatex support. For each course, `<course>.sty` has specific math formulae and functions. Finally, the `epistemic.sh` script sets a symlink to course specific snippets.

`\snippets`:
- `tex.snippets`
- `\55\Ultisnips\tex.snippets`
- `\Stat110\Ultisnips\tex.snippets`
- `\Econ1011\Ultisnips\tex.snippets`

The main snippets file is symlinked to `~\.vim\Ultisnips`. The others are changed by setting the `current` symlink, in `~\Documents\Harvard\Classes`

## TODO

General
  - `slash-esc` has issues cooperating with everything else.
  - Deactivated `autosnippet3`.
  - Update `guide.pdf` for Ec 1011/Math 55 completions.

