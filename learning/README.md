# LEARNING - http://flr-project.org

This folder contains learning material for FLR, including tutorials and training material prepared by the FLR Team for various courses.

## How to contribute

To **add a new tutorial**, choose a short name (without spaces), and run

  make new NAME=myNewTutorial

by substituting *myNewTutorial* with the choosen name. You can also copy the `_template` folder and rename `template.Rmd` file inside. Please use the same short name for both folder and file.

You can now write the tutorial, as a markdown file to be processed by knitr.

Use the included `Makefile` to call R and `knit` the document so the markdown file, `myNewTutorial.md` will be made available to github pages' jekyll.

Please select under which section the tutorial should appear at <http://flr-project.org/learning/>, by modifying the `learning` variable in the Rmd file yaml front matter.

## Linking to figures

## Linking to assets

[![FLR packages](/assets/diagrams/flrpkgs.png)](/assets/diagrams/flrpkgs.png)
