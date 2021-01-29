  SEARCH_PATH="./"
  SEARCH="SF88"
  REPLACE="SF98"

  find ${SEARCH_PATH} -type f -name "*${SEARCH}*" | while read FILENAME ; do
      NEW_FILENAME="$(echo ${FILENAME} | sed -e "s/${SEARCH}/${REPLACE}/g")";
      mv "${FILENAME}" "${NEW_FILENAME}";
  done