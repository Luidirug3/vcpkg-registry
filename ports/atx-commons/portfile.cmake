vcpkg_from_git(
  OUT_SOURCE_PATH SOURCE_PATH
  URL https://AritexSoftware@dev.azure.com/AritexSoftware/Aritex.Commons/_git/Aritex.Commons
  REF bce5d5b738fe480348f01c256d54e544e8f81b1b
  HEAD_REF develop
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)

vcpkg_install_cmake()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
