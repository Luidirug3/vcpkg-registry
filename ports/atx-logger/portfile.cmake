vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Luidirug3/atx-logger
  REF v1.0.0
  SHA512 819a81ea83a48197407052fdf75aac316e1fcda0f0294c6d1e8b94194d2ff36786162d4c8edb78d8655f653a5f27cacabbb52430bdb74c872ea4750e268b1589
  HEAD_REF main
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)

vcpkg_install_cmake()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
