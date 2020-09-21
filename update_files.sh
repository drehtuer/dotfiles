#!/bin/sh
for f in $(find * -type f ! -name "$(basename ${0})" ! -name "README.md" -not -path ".git" ); do
	REPO_FILE="$(readlink -f ${f})"
	LOCAL_FILE="${HOME}/.${f}"

	if [ -L "${LOCAL_FILE}" ]; then
		if [ "$(readlink -f ${LOCAL_FILE})" != "${REPO_FILE}" ]; then
      diff ${LOCAL_FILE} ${REPO_FILE}
			rm -v ${LOCAL_FILE}
			ln -sv ${REPO_FILE} ${LOCAL_FILE}
		fi
	else
    if [ -f "${LOCAL_FILE}" ]; then
      diff ${LOCAL_FILE} ${REPO_FILE}
      rm -v ${LOCAL_FILE}
    else
      mkdir -pv $(dirname ${LOCAL_FILE})
    fi
		ln -sv ${REPO_FILE} ${LOCAL_FILE}
	fi
done
