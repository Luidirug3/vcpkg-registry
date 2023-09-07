vcpkg_from_git(
  OUT_SOURCE_PATH SOURCE_PATH
  URL https://AritexSoftware@dev.azure.com/AritexSoftware/Aritex.Commons/_git/Aritex.Commons
  REF e2ffaf8026d66984e3c75949eddd31dc26960133
  HEAD_REF develop
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)

vcpkg_install_cmake()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
