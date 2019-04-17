#! /bin/bash
function addHost(){
    NOME_PROJETO=$1
	if grep -q "${NOME_PROJETO}.io" /etc/hosts; then
		echo "${NOME_PROJETO}.io Exists!!"
	else
		sudo echo "127.0.0.1 ${NOME_PROJETO}.io" >> /etc/hosts;
	fi

	if grep -q "^htdocs" data/www/${NOME_PROJETO}/.gitignore; then
		echo "htdocs ${NOME_PROJETO} just ignored!!"
	else
		cd data/www/${NOME_PROJETO}
		ln -s ./ htdocs;
		printf '\nhtdocs' >> .gitignore;
		git commit -am "Ignorar htdocs do docker."                                                                                                                      
		cd ../../
	fi
}

addHost "$@"