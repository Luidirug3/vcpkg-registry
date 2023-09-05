vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Luidirug3/atx-logger
  REF 714e9a1c19d7cf4400b28a42f40ed213739f85e4
  SHA512 3cb8b4086cd0af973993ef6fc9bb05262189609991e4236d46dad815ee54025f39a29821514eaa18f12b280331642737b803858f9fc8cd88427b311a4b46f19b
  HEAD_REF main
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)

vcpkg_install_cmake()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
