run_app_in_development_mode:
	docker run \
		--interactive \
		--tty \
		--mount source="(pwd)",target=/app \
		--publish 4040:4040 \
		danielak/docker-front-end-image:latest \
		/bin/bash
