{ buildPythonPackage
, fetchPypi
, pip
, cffi
, curl
, curl-impersonate
, setuptools
}:
buildPythonPackage rec {
  pname = "curl_cffi";
  version = "0.5.10";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-VbrEtz4tgM7qq+ozJw/IymrOWUEopGcQJC8uaItPi/w=";
  };

  buildInputs = [ 
    pip 
    cffi 
    curl 
    curl-impersonate 
    setuptools 
  ];
}
