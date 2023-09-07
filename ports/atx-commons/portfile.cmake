vcpkg_from_git(
  OUT_SOURCE_PATH SOURCE_PATH
  URL https://AritexSoftware@dev.azure.com/AritexSoftware/Aritex.Commons/_git/Aritex.Commons
  REF 65445cdb57668fb7d5acd7f20df7ec23421e23fa
  HEAD_REF develop
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)

vcpkg_install_cmake()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
