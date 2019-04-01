docker build -t bed-sensor-zephyr .
docker run -d -it --name=kz --mount type=bind,source=/${pwd},target=/workdir bed-sensor-zephyr /bin/shell