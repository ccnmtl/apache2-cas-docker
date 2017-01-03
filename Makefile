build:
	docker build -t ccnmtl/apache2-cas .

push: build
	docker push ccnmtl/apache2-cas
