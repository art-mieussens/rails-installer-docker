# Docker container for Rails installations

Node, yarn, and rails installed.

Individual branches for different rails versions, rebuild to update to latest minor version.

By default creates an app named 'myapp' in the current directory.

## Usage

To create a new Rails app named 'myblog' in a subfolder of the current directory:
```shell
sudo docker run -it --rm -v $PWD:/usr/src/app rails-installer:6.0 rails new myblog
```

To create a new Rails engine named 'blorgh' in a subfolder of the current directory:
```shell
sudo docker run -it --rm -v $PWD:/usr/src/app rais-installer:6.0 rails plugin new blorgh -mountable
```