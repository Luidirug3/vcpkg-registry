vcpkg_from_git(
  OUT_SOURCE_PATH SOURCE_PATH
  URL https://AritexSoftware@dev.azure.com/AritexSoftware/Aritex.Commons/_git/Aritex.Commons
  REF c9b09b627e2614451e5778693e403f43083e947b
  HEAD_REF develop
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)

vcpkg_install_cmake()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
