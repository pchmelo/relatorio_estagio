PROJECT_ROOT_FILE=main
PROJECT_BUILD_DIR=out

all:
    mkdir -p ${PROJECT_BUILD_DIR}
    mkdir -p ${PROJECT_BUILD_DIR}/pages
    xelatex --shell-escape -output-directory=${PROJECT_BUILD_DIR} ${PROJECT_ROOT_FILE}.tex
    bibtex   ${PROJECT_BUILD_DIR}/${PROJECT_ROOT_FILE}
    xelatex --shell-escape -output-directory=${PROJECT_BUILD_DIR} ${PROJECT_ROOT_FILE}.tex
    xelatex --shell-escape -output-directory=${PROJECT_BUILD_DIR} ${PROJECT_ROOT_FILE}.tex
    mv ${PROJECT_BUILD_DIR}/${PROJECT_ROOT_FILE}.pdf ${PROJECT_ROOT_FILE}.pdf

clean:
    rm -rf ${PROJECT_BUILD_DIR}