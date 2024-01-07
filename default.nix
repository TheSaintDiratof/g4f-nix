{ buildPythonPackage
, fetchFromGitHub
, setuptools
, pip
, asyncstdlib
, flask
, uvicorn
, fastapi
, asgiref
, numpy
, platformdirs
, pillow
, loguru
, waitress
, nest-asyncio
, duckduckgo-search
, js2py
, websockets
, browser-cookie3
, aiohttp
, pycryptodome
, beautifulsoup4
, selenium
, mmh3
# new packages
, pkgs ? import <nixpkgs> {}
, bs4 ? (pkgs.python3Packages.callPackage ./deps/bs4.nix {})
, async-property ? (pkgs.python3Packages.callPackage ./deps/async-property.nix {})
, undetected-chromedriver ? (pkgs.python3Packages.callPackage ./deps/undetected-chromedriver.nix {})
, py-arkose-generator ? (pkgs.python3Packages.callPackage ./deps/py-arkose-generator.nix {})
, pyexecjs ? (pkgs.python3Packages.callPackage ./deps/pyexecjs.nix {})
, curl-cffi ? (pkgs.python3Packages.callPackage ./deps/curl-cffi.nix { curl-impersonate = pkgs.curl-impersonate.override { stdenv = pkgs.llvmPackages_13.stdenv; }; })
}: buildPythonPackage rec {
  name = "g4f";
  version = "0.1.9.8";
  src = fetchFromGitHub {
    owner = "xtekky";
    repo = "gpt4free";
    rev = "refs/tags/${version}";
    hash = "sha256-SY3uRLZ+yz9Zfcr8ktz1Bl7xAbnRUYXqW3RTa0M9f+k=";
  };
  format = "setuptools";
  propagatedBuildInputs = [ 
    setuptools
    pip
    bs4
    async-property
    asyncstdlib
    undetected-chromedriver
    py-arkose-generator
    flask
    uvicorn
    fastapi
    asgiref
    numpy
    platformdirs
    pillow
    waitress
    loguru
    nest-asyncio
    duckduckgo-search
    pyexecjs
    js2py
    websockets
    browser-cookie3
    aiohttp
    curl-cffi
    pycryptodome
    beautifulsoup4
    selenium
    mmh3
  ];
  doCheck = false;
}
