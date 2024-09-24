alias shp='sshpass -p$(gopass jones) ssh -l jones -oStrictHostKeyChecking=no '
alias shu='sshpass -p$(gopass csa) ssh -l csa_mitch_tuck -oStrictHostKeyChecking=no '
alias upddateshp='gopass insert -f jones'
alias updateshu='gopass insert -f csa'
