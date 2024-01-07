{ lib, fetchFromGitHub, buildPythonPackage,
pip, pytest-runner, pytest }:
buildPythonPackage rec {
  pname = " async-property";
  version = "0.2.2";
  format = "setuptools";

  buildInputs = [ pip pytest-runner pytest ];

  src = fetchFromGitHub {
    owner = "ryananguiano";
    repo = "async_property";
    rev = "refs/tags/v${version}";
    hash = "sha256-Bn8PDAGNLeL3/g6mB9lGQm1jblHIOJl2w248McJ3oaE=";
  };

}
