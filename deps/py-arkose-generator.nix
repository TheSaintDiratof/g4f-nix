{ buildPythonPackage
, fetchFromGitHub
, pip
, mmh3
, pycryptodome}:
buildPythonPackage rec {
  pname = "py-arkose-generator";
  version = "0.0.0.2";
 
  src = fetchFromGitHub {
    owner = "Zai-Kun";
    repo = "py-arkose-token-generator";
    rev = "main";
    hash = "sha256-N0KxuTffpQMu5T9yTRLlS7N+LJur968+sm2aAvni7Sg=";
  }; format = "setuptools";

  buildInputs = [ 
    pip
    mmh3
    pycryptodome 
  ];
}
