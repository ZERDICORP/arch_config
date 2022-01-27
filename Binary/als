RESULT_CODE_FAILED=1
DIR="$*"

if [[ $DIR == "" ]]; then
  DIR="${PWD}/"
fi

if [ ! -d "$DIR" ]; then
  printf  "ls: cannot access file '${DIR}': Not directory\n"
  exit $RESULT_CODE_FAILED
fi

OUTPUT=$(ls "${DIR}" --color --group-directories-first || exit 1)
OUTPUT=$(echo "${OUTPUT}" | awk -v j=0 '{if ($0) {++j; printf "| %s\n", $0;}} END{if(j == 0) print "[ no files ]";}')

OUTPUT_HIDDEN=$(cd "${DIR}" && ls -d .?* --color --group-directories-first || exit 1)
OUTPUT_HIDDEN=$(echo "${OUTPUT_HIDDEN}" | awk -v j=0 '{if($0 && NR > 1) {++j; printf "| %s\n", $0}} END{if(j == 0) print "[ no dotfiles ]";}')

printf "+\n${OUTPUT}\n+\n${OUTPUT_HIDDEN}\n+\n"
