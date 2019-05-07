# geoclaw_tutorial_csdms2019

### You can also access this repository using https://tinyurl.com/y3g2adcp

For [CSDMS](https://csdms.colorado.edu/wiki/Main_Page) webinar, May 7, 2019.  
[Abstract](https://csdms.colorado.edu/wiki/Presenters-0439)

## Contents

 - `geoclaw_examples` has two examples to be run from the command line in 
   the way GeoClaw is normally used.
   
    - `chile2010a` -- a simplified version of the GeoClaw example found in
      [`$CLAW/geoclaw/examples/tsunami/chile2010](http://www.clawpack.org/gallery/gallery/gallery_geoclaw.html#chile-2010-tsunami).
      This version has only one grid level.
    - `chile2010b` -- A second version of this example, with 3 levels of AMR, 
    regions, and gauges added.

 - `notebooks` contains Jupyter notebook versions of the two examples to 
   lead the new user through the process.  



## Installation

 - If you clone this repository, you can run the code locally on your computer 
   provided you have Clawpack and its dependencies installed, see
   [Clawpack Installation Instructions](http://www.clawpack.org/installing.html).
   
 - Alternatively, if you have [docker](https://docs.docker.com/) installed, then
   the `Dockerfile` in this repository can be used to start a notebook server from a docker 
   container, from which the notebooks can be run.  You can also open a
   terminal from the Jupyter page from which the examples in `geoclaw_examples`
   can be run.  See [Clawpack docker Instructions](http://www.clawpack.org/docker_image.html).

## Running on binder

 - Alternatively, you can start a Jupyter server running on
   [mybinder.org](https://mybinder.org/) by clicking on this badge:
   
   [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/clawpack/geoclaw_tutorial_csdms2019/master)

   This has Clawpack and all dependencies already installed, based on the `Dockerfile`
   in this repository.
