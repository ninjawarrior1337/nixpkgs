{
  lib,
  buildPythonPackage,
  fetchPypi,
  setuptools,
}:
buildPythonPackage rec {
  pname = "mslex";
  version = "1.3.0";
  format = "pyproject";

  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-ZByIfR09thDu4q83qOWr2j9wswBs39LQ0p3A0a4oqF0=";
  };

  build-system = [
    setuptools
  ];

  pythonImportsCheck = [ "mslex" ];

  meta = with lib; {
    description = "shlex for windows";
    homepage = "https://github.com/smoofra/mslex";
    license = licenses.apsl20;
    maintainers = with maintainers; [ ninjawarrior1337 ];
  };
}
