#######################################
# Install common packages.
# Globals:
#   BASH_FOREGROUND
#   BASH_BACKGROUND
#   NO_ERRORS_CODE
# Returns:
#   NO_ERRORS_CODE
#######################################
install_packages() {
  apt install openssh-server -y
  return $?
}