clear

#***********************************************************
#	menssagem de erro
#***********************************************************

############################################################
#	Tratamento de Parametros
############################################################
	if [ -z $1 ] 
	then
		lista=0
	else
		lista=$1
	fi
	if [ -z $2 ] 
	then
		ex=0
	else
		ex=$2
	fi
	if [ -z $3 ] 
	then
		ate=0
	else
		ate=$3
	fi

############################################################

z=""

if [ $ate -ne 0 ]; then
	while [ $ex -lt $ate ]
	do
		if [ $ex -ge 10 ]
		then
			exercicio="c0$lista/ex$ex"
		else
			exercicio="c0$lista/ex0$ex"
		fi
		local=$(find $exercicio -type f -name '*.c')
		if [ -z $local ]
		then
			ex=$(( $ex + 1 ))
		else
			norminette -R CheckForbiddenSourceHeader $local
			ex=$(( $ex + 1 ))
		fi
	done
fi

if [ $ex -ge 10 ]
then
	exercicio="c0$lista/ex$ex"
else
	exercicio="c0$lista/ex0$ex"
fi
local=$(find $exercicio -name '*.c')
if [ -z $local ]
then
	echo
else
	norminette -R CheckForbiddenSourceHeader $local
fi

