# Defined in - @ line 1
function pr --wraps='pipenv run' --description 'alias pr pipenv run'
  pipenv run $argv;
end
