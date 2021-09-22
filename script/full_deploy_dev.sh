# #!/bin/bash
# DIR=./layer/nodejs/node_modules

# echo "installing node_modules." &&
# npm install &&
# echo "node_modules installed." &&

# if [[ -d "$DIR" ]]
# then
#     echo "$DIR exists." &&
#     rm -R ./layer/nodejs/node_modules &&
#     echo "$DIR removed." &&
#     mv ./node_modules ./layer/nodejs &&
#     echo "$DIR moved."
# else 
#     echo "$DIR does not exist." &&
#     mv ./node_modules ./layer/nodejs && 
#     echo "$DIR moved."
# fi

sam build && 
sam deploy --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM CAPABILITY_AUTO_EXPAND --no-confirm-changeset