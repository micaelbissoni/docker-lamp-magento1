#! /bin/bash
function addHost(){
    NOME_PROJETO=$1
	if grep -q "${NOME_PROJETO}.io" /etc/hosts; then
		echo "${NOME_PROJETO}.io Exists!!"
	else
		sudo echo "127.0.0.1 ${NOME_PROJETO}.io" >> /etc/hosts;
	fi
	cd data/www/${NOME_PROJETO}
	echo "htdocs" >> .gitignore;
	git commit -am "Ignorar htdocs do docker."                                                                                                                      
	ln -s ./ htdocs
	cd ../../
}

addHost "$@"