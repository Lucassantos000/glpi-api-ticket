
up:
	# dar permisão de execução ao script criar_volumes_mysql.sh
	chmod +x criar_volumes_mysql.sh
	#execultar o script criar_volumes_mysql.sh
	./criar_volumes_mysql.sh
	# subir os container com docker compose up
	docker compose up -d

down:
	# parar os container com docker compose down
	docker-compose down

apagar_volumes:
	# dar permisão de execução ao script apagar_volumes_mysql.sh
	chmod +x apagar_volumes_mysql.sh
	# apagar os volumes com docker compose down -v
	./apagar_volumes_mysql.sh


