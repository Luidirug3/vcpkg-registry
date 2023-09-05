vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Luidirug3/atx-logger
  REF 714e9a1c19d7cf4400b28a42f40ed213739f85e4
  SHA512 3eeeaea8cea11e739566680eb546e567e38722c1bed7f800b799059a9cdfd7dbd1e094432567a287c9cf47c206313e4cb9850505a4e217f706a552f3bb0e0dd0
  HEAD_REF main
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)

vcpkg_install_cmake()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
