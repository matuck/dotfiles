export BW_SESSION=$(cat ~/.cache/bw_key)
function bwunlock {
  status=$(bw status | jq '.status' -r )
  if [ $status = 'locked' ] ; then
  	key=$(bw unlock --raw)
	export BW_SESSION=$key
	rm ~/.cache/bw_key
	echo $key > ~/.cache/bw_key
  fi
}

function bwlock {
	bw lock
	rm ~/.cache/bw_key
}

function bwpassupdate {
	bwunlock
	item=$(bw get item $1 )
	itemid=$(echo $item | jq -r '.id' )
	read -s -p "Password: " newpassword
	echo $item | jq --arg newpassword $newpassword '.login.password=$newpassword' | bw encode | bw edit item $itemid 
	bw sync
}

alias bwpass='bw get password '
