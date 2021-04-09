# Defined in - @ line 1
function pe --wraps='pipenv exec' --wraps='pipenv run' --description 'alias pe pipenv run'
  pipenv run $argv;
end
