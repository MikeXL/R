# Creating Package

🖖 

Here is the command to create the skeleton / structure of the new package named *MyFirstPackage*

    
    package.skeleton(name="*MyFirstPackage*")
    

What's in there?
* DESCRIPTION file
* *man/* subdirectory for documentation, mostly don't needed today as mostly we prefer putting documentations and manpages on github
* *R/* the only folder definitely required for your R code
* *data/* if any dataset to be shared
* *src/* if external code required for instance C, C++ or Fortran
* *inst/* miscellaneous other stuff

Here is the command to build the package

    
    R CMD BUILD *MyFirstPackage*
    

And you must know how to install it already? or else

    
    R CMD INSTALL *MyFirstPackage_ver.tar.gz*
    


LLAP
