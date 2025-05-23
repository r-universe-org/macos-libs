# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

#[=======================================================================[.rst:
FindUnixCommands
----------------

.. deprecated:: 3.26

  Use :option:`${CMAKE_COMMAND} -E <cmake -E>` subcommands instead.

Find Unix commands, including the ones from Cygwin

This module looks for the Unix commands ``bash``, ``cp``, ``gzip``,
``mv``, ``rm``, and ``tar`` and stores the result in the variables
``BASH``, ``CP``, ``GZIP``, ``MV``, ``RM``, and ``TAR``.
#]=======================================================================]

include(${CMAKE_CURRENT_LIST_DIR}/FindCygwin.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/FindMsys.cmake)

find_program(BASH
  bash
  ${CYGWIN_INSTALL_PATH}/bin
  ${MSYS_INSTALL_PATH}/usr/bin
)
mark_as_advanced(
  BASH
)

find_program(CP
  cp
  ${CYGWIN_INSTALL_PATH}/bin
  ${MSYS_INSTALL_PATH}/usr/bin
)
mark_as_advanced(
  CP
)

find_program(GZIP
  gzip
  ${CYGWIN_INSTALL_PATH}/bin
  ${MSYS_INSTALL_PATH}/usr/bin
)
mark_as_advanced(
  GZIP
)

find_program(MV
  mv
  ${CYGWIN_INSTALL_PATH}/bin
  ${MSYS_INSTALL_PATH}/usr/bin
)
mark_as_advanced(
  MV
)

find_program(RM
  rm
  ${CYGWIN_INSTALL_PATH}/bin
  ${MSYS_INSTALL_PATH}/usr/bin
)
mark_as_advanced(
  RM
)

find_program(TAR
  NAMES
  tar
  gtar
  PATH
  ${CYGWIN_INSTALL_PATH}/bin
  ${MSYS_INSTALL_PATH}/usr/bin
)
mark_as_advanced(
  TAR
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(UnixCommands
  REQUIRED_VARS BASH CP GZIP MV RM TAR
)
