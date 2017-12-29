run_app_in_development_mode:
	docker run \
		--interactive \
		--tty \
		--rm \
		--mount source="$(pwd)",target=/app \
		danielak/docker-front-end-image:latest \
