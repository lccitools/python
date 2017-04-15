#!/bin/bash -e

export PYTHON_ENV=${PYTHON_BASE}/${VERSION}
python${VERSION} -m venv ${PYTHON_ENV}
${PYTHON_ENV}/bin/pip install -U pip
${PYTHON_ENV}/bin/pip install -r requirements.txt

mkdir -p ${PYTHON_MODULEFILES}
cat <<EOF > ${PYTHON_MODULEFILES}/${VERSION}
#%Module
prepend-path PATH ${PYTHON_ENV}/bin
EOF
