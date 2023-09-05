vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Luidirug3/atx-logger
  REF 714e9a1c19d7cf4400b28a42f40ed213739f85e4
  SHA512 589ca9621cd149b4bce85062e7b24494a496ff73a1b0bce7e98a20aabd5035e69de2bb5c25be08d86469426d5c73068cd6a6c899f1bdbda2776c2ae5453a601e
  HEAD_REF main
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)

vcpkg_install_cmake()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
