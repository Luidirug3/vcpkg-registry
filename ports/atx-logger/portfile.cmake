vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO https://github.com/Luidirug3/AtxLogger
  REF e0fc1e4e5c3e878a5fbd0bc3af4db56ad5895a5b
  SHA512 ba08d57fc0a34d16bfa3a6d5ed92f724f963c2b4a96c45debfcb0f35e8c57f6d0f7c60fb35bd3626b89c74a061592f2a39aaa6f3274644d1c491392c87f48899
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