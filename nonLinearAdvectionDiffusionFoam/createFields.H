Info<< "Reading transportProperties\n" << endl;
      // * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //
 IOdictionary transportProperties
 (
     IOobject
     (
         "transportProperties",
         runTime.constant(),
         mesh,
         IOobject::MUST_READ_IF_MODIFIED,
         IOobject::NO_WRITE
     )
 );

 dimensionedScalar nu
 (

     transportProperties.lookup("nu")        //---------- Contents is same
 );                                          //---------- icoFoam solver

 Info<< "Reading field U\n" << endl;

 volVectorField U
 (
     IOobject
     (
         "U",
         runTime.timeName(),
         mesh,
         IOobject::MUST_READ,
         IOobject::AUTO_WRITE
     ),
     mesh
 );


 #include "createPhi.H"               //<------ Note here
