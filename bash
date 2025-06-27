function prompt_user {
  echo "How many files are in the current directory?"
  read guess
}

function count_files {
  echo $(ls -1 | wc -l)
}

actual=$(count_files)
prompt_user

while [[ $guess -ne $actual ]]
do
  if [[ $guess -lt $actual ]]; then
    echo "Too low!"
  else
    echo "Too high!"
  fi
  prompt_user
done

echo "Congratulations! You guessed it right. There are $actual files."
