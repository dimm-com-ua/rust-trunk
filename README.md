#RUST-TRUNK

This project contains a Dockerfile for building an environment with specified dependencies. It aims to provide a streamlined setup process for development and deployment.

##Usage

To use this Dockerfile, follow these steps:

1. Clone the repository:

```
git clone <repository_url>
```

2. Navigate to the project directory:

```
cd <project_directory>
```

3. Build the Docker image:

```
docker build -t <image_name> .
```

4. Run a container using the built image:

```
docker run -it --rm <image_name>
```


## Dockerfile Details

The Dockerfile specifies an Ubuntu 22.04 base image and installs the following dependencies:

- Timezone configuration to Europe/Kiev
- System packages: **curl**, **build-essential**, **libssl-dev**, **cmake**, **pkg-config**, **openssl**, **gnupg**
- Node.js version 16.x via NodeSource repository
- Rust programming language via rustup installer
- Rust target **wasm32-unknown-unknown** for WebAssembly compilation
- WebAssembly tools: **wasm-bindgen-cli**, **trunk**

## Environment Configuration

This Dockerfile sets the timezone to Europe/Kiev, installs necessary system packages, Node.js, and Rust. It also adds Rust's binary directory to the PATH environment variable for ease of use.

## Notes

- Make sure to replace **<repository_url>** and **<project_directory>** with the appropriate values for your project.
- **<image_name>** can be replaced with any desired name for your Docker image.
- Feel free to modify the Dockerfile as needed for your specific requirements.

## Author

This README is authored by dimm.im (dev@dimm.im).
