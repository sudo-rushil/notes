# LaTeX Class for Notes

[![Open Source Love](https://badges.frapsoft.com/os/mit/mit.svg?v=102)](https://github.com/ellerbrock/open-source-badge/)

[![forthebadge](https://forthebadge.com/images/badges/powered-by-black-magic.svg)](http://forthebadge.com)

**Author:** Rushil Mallarapu

## Installing the class
Drag the `.cls` file into your the folder of your current LaTeX project. If you want the class to be available for all projects on your system, drag the `.cls` file into your LaTeX document tree (your `texmf` folder). Note that this might be different depending on different versions of TeX. On Mac, find your `texmf` folder by running `kpsewhich -var-value=TEXMFHOME`. Then, directory `.../texmf/tex/latex/notes` to a `notes` folder which will hold the `.cls` file. 

## Working with the class
Your documents based on this lecture class must adhere to the following blueprint:

```LaTeX
\documentclass[...]{notes}

\begin{document}
  ...
\end{document}
```

## TODO:

1. Section types
  - Definition
  - Remark
  - Proposition
  - Theorem
  - Corollary
  - Proof
  - Theorem-heading
  – Hint, pointer (in margin)
  – Counterpoint, in grey, right justified
  => Conf.
  Name (formatting)
  Underline (count, thickness)
  Vert line (count, thickness)
  Indent

2. General
  - Bibtex
  - Index
