vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Luidirug3/atx-logger
  REF 8844e412e1f2d91e041ca673723d4e1273fc1729
  HEAD_REF main
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)

vcpkg_install_cmake()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
