{ buildPythonPackage
, fetchPypi
, python
, setuptools
}:
buildPythonPackage rec {
  pname = "undetected-chromedriver";
  version = "3.5.4";
  pyproject = true;
  
  buildInputs = [ setuptools ];

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-le/dh53fjyou/2kZ+jGM00wIC9B/uBrgzbeUnAFColg=";
  };
}
