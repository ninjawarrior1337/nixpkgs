{
  lib,
  python3Packages,
  fetchgit,
}:
with python3Packages;
buildPythonApplication rec {
  name = "ufbt";
  version = "0.2.6";
  format = "pyproject";

  dependencies = [
    oslex
  ];

  src = fetchgit {
    url = "https://github.com/flipperdevices/flipperzero-ufbt.git";
    rev = "v${version}";
    sha256 = "sha256-PhuUzw/szzPakxgDf/7DYiL7reMGoFrG4CiOa2bBGd4=";
  };

  build-system = [
    setuptools
    setuptools-git-versioning
    wheel
  ];

  meta = with lib; {
    description = "Compact tool for building and debugging applications for Flipper Zero";
    homepage = "https://github.com/flipperdevices/flipperzero-ufbt";
    license = licenses.gpl3;
    maintainers = with maintainers; [ ninjawarrior1337 ];
  };
}
