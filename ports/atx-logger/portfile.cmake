vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Luidirug3/atx-logger
  REF 8844e412e1f2d91e041ca673723d4e1273fc1729
  SHA512 bbd52822040f2a1dc039cc26bc62ec578e06b5cefece1653ba4cd18ae1fb8cfb12994c7760eafca5ee11aba525a3127f2dd23138739850b5928e8eeb501a2acf
  HEAD_REF main
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)