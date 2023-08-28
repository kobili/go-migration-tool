make-migration:
	migrate create -ext sql -dir ./sql -seq ${migration_name}
mm: make-migration

migrate:
	go run .
m: migrate

migrate-down:
	go run . -dir=down