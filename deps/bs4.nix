{ lib
, buildPythonPackage
, fetchPypi
, python
, pip
, setuptools
, pkgs ? import <nixpkgs> {}}:
buildPythonPackage rec {
  pname = "bs4";
  version = "0.0.1";
  pyproject = true;
  
  buildInputs = [ setuptools ];

  src = fetchPypi {
    inherit pname version;
    #dist = python;
    #python = "cp37";
    hash = "sha256-NuzqH9fMXAxuSh/wdd8m1Q2mR7dTdmJswYbiISiG3To=";
  };
}
