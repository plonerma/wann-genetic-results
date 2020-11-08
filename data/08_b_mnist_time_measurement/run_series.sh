build_dir='build'

# iterate through all files
for experiment in $(echo "${build_dir}/*")
do

  # if you are executing experiments on a shared machine, you might want to prefix this command
  # with 'nice -19'

  run_experiment "${experiment}"

  if [ $? -ne 0 ]
  then
    echo "Something went wrong during $experiment"
    exit 1
  fi

  echo "Completed execution of experiment $experiment"
done
