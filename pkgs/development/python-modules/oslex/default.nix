{
  lib,
  buildPythonPackage,
  hatchling,
  fetchPypi,
  mslex,
}:
buildPythonPackage rec {
  pname = "oslex";
  version = "0.1.3";
  format = "pyproject";
  dependencies = [
    hatchling
    mslex
  ];

  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-HtTNgsdd8qi8sNo0QAmEGDdTkzFV0MfZmfpTMTdoXy0=";
  };

  pythonImportsCheck = [ "oslex" ];

  meta = with lib; {
    description = "An OS-independent wrapper for shlex and mslex";
    homepage = "https://github.com/petamas/oslex";
    license = licenses.mit;
    maintainers = with maintainers; [ ninjawarrior1337 ];
  };
}
