#! /bin/bash
#  Author  : Al Muhdil Karim
#  Version : Alpha 1.01
#  Reference
#  https://www.petanikode.com/hugo-hosting-github/
#
#  This step for password failed
#  https://medium.com/@ginnyfahs/github-error-authentication-failed-from-command-line-3a545bfd0ca8
#
#  this step for credetial store
#  https://web.mit.edu/git/www/git-credential-store.html
#
#  fatal: empty ident name (for <karim@bazoka.localdomain>) not allowed
#  issue solved : https://stackoverflow.com/questions/43662048/getting-fatal-empty-ident-name-not-allowed-when-doing-git-commit-amend/43662115
#
#  error : error: failed to push some refs to 'https://github.com/
#  https://stackoverflow.com/questions/60660765/error-failed-to-push-some-refs-to-https-github-com


#Github content + core push function 
 function wrup_push_all_github() {
	hugo ;
	echo "insert initial commit :"
	read initialcom;
	# core update
	git add .;
	git commit -m "$initialcom";
	git push -u origin main;
	# content update
	cd public;
	git add .;
	git commit -m "$initialcom";
	git push -u origin master;
	# back to parrent 	directory
	cd ..;
}

# Github core pull function
function wrup_pull_core_github() {
	git pull origin main;
}
