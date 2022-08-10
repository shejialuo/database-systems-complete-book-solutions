# This file is copied from
# https://gist.github.com/voldien/445f4c5fc0ea7678f0e24069eb839320#file-cmakelists-txt

PROJECT(database-systems-complete-book-solutions NONE)
CMAKE_MINIMUM_REQUIRED(VERSION 3.11)

FIND_PACKAGE(LATEX)

# The directory where the final build data will be stored.
SET(LATEX_OUTPUT_PATH build)
SET(OUT_DIRECTORY "${CMAKE_SOURCE_DIR}/${LATEX_OUTPUT_PATH}")
# Directory where the source files are located.
SET( WORKINGDIR "${CMAKE_SOURCE_DIR}" )

set(PDFLATEX_COMPILER "xelatex")

# Latex source file.
SET( MAIN_TEX_BASE_FILENAME "main")
SET( MAIN_TEX "${CMAKE_SOURCE_DIR}/${MAIN_TEX_BASE_FILENAME}.tex")

IF(LATEX_FOUND AND LATEX_PDFLATEX_FOUND)

	# First pass.
	ADD_CUSTOM_TARGET( latex-prebuild
			COMMAND ${PDFLATEX_COMPILER}  -output-directory ${OUT_DIRECTORY} -draftmode -interaction=nonstopmode ${MAIN_TEX}
			COMMENT "Starting Prebuild."
			WORKING_DIRECTORY ${WORKINGDIR}
			DEPENDS ${MAIN_TEX})

	# Second pass - generate the final pdf.
	ADD_CUSTOM_TARGET( latex-pdf
				COMMAND ${PDFLATEX_COMPILER} -output-directory ${OUT_DIRECTORY}  ${MAIN_TEX}
				WORKING_DIRECTORY ${WORKINGDIR}
				COMMENT "Assembling the final pdf file."
				DEPENDS  ${MAIN_TEX})


	ADD_CUSTOM_TARGET(all-formats ALL) # Entry point of execution.
	ADD_DEPENDENCIES( all-formats latex-pdf)
ELSE()
	MESSAGE(ERROR "No latex tools found!")
ENDIF()
