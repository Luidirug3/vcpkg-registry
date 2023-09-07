vcpkg_from_git(
  OUT_SOURCE_PATH SOURCE_PATH
  URL https://AritexSoftware@dev.azure.com/AritexSoftware/Aritex.Commons/_git/Aritex.Commons
  REF 0150ba0a7c7e2db40bdd5f85e25f870ef1b217d9
  HEAD_REF develop
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)

vcpkg_install_cmake()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
