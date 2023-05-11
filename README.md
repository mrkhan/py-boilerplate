A Boilerplate for phython projects

### Getting Started

```shell
# clone it
git clone git@github.com:developit/py-boilerplate.git py-workspace
cd py-workspace

# Make it your own
rm -rf .git && git init
```

### Explaining the Dockerfile and Setup

The VOLUME instruction defines a volume for the `/app` directory, which is the working directory for the container. This allows you to mount a host directory to the container directory using the `-v` flag when you run the container.

To build the Docker image, run the following command in the same directory as your Dockerfile:

```shell
# sytax
docker build -t <image_name> .

# actual command
docker build -t py-workspace .
```

To run the container with a host directory mounted to the container directory, use the `-v` flag followed by the absolute path of the host directory and the container directory:

```shell
# sytax
docker run -v /absolute/path/to/host/dir:/app -p 8000:8000 <image_name>

# actual command
docker run -v ./app:/app py-workspace -p 8000:8000
```

/app folder should contain all your project code

#### Example code
The sample app.py file in /app folder runs a flask project which should display "Hello, World!!!!" in browser