# Survival Container

Welcome to the **Survival Container** repository! This repo was created from the [Research Framework Template](https://github.com/zaandahl/research-framework) and is based on the [Rocker](https://www.rocker-project.org/) and [Tidyverse](https://www.tidyverse.org/) Docker image. It includes additional packages installed through the `install.R` script, in particular the `rstanarm` package is installed with the survival branch from GitHub to facilitate the use of Bayesian survival models.

## Directory Structure

The repository is organized into the following directories:

- `data`: Placeholder for your data files. These files are ignored by Git.
- `manuscript`: Contains documentation, presentations, papers, and other relevant material.
- `methods`: The primary location for your code and scripts.
- `results`: Placeholder for your output files, such as figures and tables. These files are also ignored by Git.

**Note**: Since GitHub is not suitable for storing large static files, please use an alternative service like Dropbox for storing your data and results if you plan to create your own GitHub repository based off this one. You can then add the Dropbox links to your README file.

## Docker Environment

This repository includes a Docker environment for running survival analysis code in a consistent and reproducible manner. The environment is based on the Rocker and Tidyverse (`rocker/verse`) images and includes additional packages installed through the `install.R` script.

### Additional Files

Three additional files are included in the root of the repository:

1. `Dockerfile`: Defines the Docker image with Rocker and Tidyverse.
2. `install.R`: Installs the `pacman` package manager and additional R packages needed for survival analysis. For this project, the `rstanarm` package is installed with the survival branch from GitHub to facilitate the use of Bayesian survival models. Other packages installed include `config`, `survival`, `survminer` and `loo`
3. `compose.yaml`: Builds the Docker image and launches an RStudio instance with Tidyverse on port 8787, while volume mounting the `.rstudio_config` and `methods`, `data`, and `results` directories under `/home/rstudio`. You can modify the `compose.yaml` file to change the volume mount directories. The left side of the colon is the local directory on your machine, and the right side of the colon is the directory in the Docker container. Remember that only volumes you mount and the directories below them are visible to the Docker container.  For example, if you want to add the `code` directory (and everything under it) to your project, you can add the following line to the `compose.yaml` file:

```yaml
    - ./code:/home/rstudio/code
```

### Getting Started

To use this repository to start up a Docker container with RStudio and `rstanarm` for survival analysis do the following:

1. Install [Docker](https://docs.docker.com/get-docker/) on your machine.

2. Clone or download this repository to your machine. At a minimum you need the `Dockerfile`, `install.R`, and `compose.yaml` files.

3. Build the docker image with the following command. You only need to do this once, or whenever you modify the `Dockerfile` or `install.R` files. 

```sh
docker compose build
```

4. Run the Docker environment commands to set up your RStudio session:

```sh
docker compose up
```

This will start an RStudio session with your code, allowing you to work on your project seamlessly. You can access the RStudio session by opening a browser and going to `localhost:8787`. 

5. Start working on your project by adding your code, data, and results to the appropriate directories.

When you are finished you can clean up the Docker container with the following compose command. This is similar to shutting down your computer.

```sh
docker compose down
```

Happy science coding!

