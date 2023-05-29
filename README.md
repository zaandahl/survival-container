# Research Framework

Welcome to the **Research Framework** repository! This repo provides a standardized template for R based research coding projects, aimed at streamlining your research workflow and making it easy to collaborate, reproduce, and share your work.

## Directory Structure

The repository is organized into the following directories:

- `data`: Placeholder for your data files. These files are ignored by Git.
- `manuscript`: Contains documentation, presentations, papers, and other relevant material.
- `methods`: The primary location for your code and scripts.
- `results`: Placeholder for your output files, such as figures and tables. These files are also ignored by Git.

**Note**: Since GitHub is not suitable for storing large static files, please use an alternative service like Dropbox for storing your data and results.

## Docker Environment

This repository includes a Docker environment for running your code in a consistent and reproducible manner. The environment is based on the Rocker and Tidyverse (`rocker/verse`) images and includes additional packages installed through the `install.R` script.

### Additional Files

Three additional files are included in the root of the repository:

1. `Dockerfile`: Defines the Docker image with Rocker and Tidyverse.
2. `install.R`: Installs the `pacman` package manager and any additional R packages needed for your project. The example file installs the `brms` and `rstan` packages. You will want to modify these packages for your specific project.
3. `compose.yaml`: Builds the Docker image and launches an RStudio instance with Tidyverse on port 8787, while volume mounting the `.rstudio_config` and `methods`, `data`, and `results` directories under `/home/rstudio`.

### Getting Started

To start using this research framework template for your own project, follow these steps:

1. Click the "Use this template" button at the top of the [repository page](https://github.com/username/research-framework).
2. Choose a name for your new repository, set the visibility to public or private, and click "Create repository from template."
3. Clone the newly created repository to your local machine using `git clone https://github.com/yourusername/yourrepositoryname.git`.
4. Navigate to the cloned repository folder on your local machine using the terminal or command prompt.
5. Build the Docker image after you modify the `install.R` file with any R packages you wish to install.

```sh
docker compose build
```

6. Run the Docker environment commands to set up your RStudio session:

```sh
docker compose up
```

This will start an RStudio session with your code, allowing you to work on your project seamlessly. When you are done, push your changes to the repository, and you can continue your work on any other machine with Docker installed by cloning the repository and running the same commands.

7. Start working on your project by adding your code, data, and results to the appropriate directories.

Remember to store your data and results in an external service like Dropbox, and copy them to the data and results directories as needed. When you are done working, push your changes to the repository, and you can continue your work on any other machine with Docker installed by cloning the repository and running the same Docker environment commands. When you are finished you can clean up the Docker container with the following compose command. 

```sh
docker compose down
```

Happy science coding!

### Apple Silicon Support

If you are using a Mac with Apple Silicon (e.g., M1 or M2 chip), make sure you meet the following requirements to run the Docker environment:

1. Your macOS version must be Ventura or newer.
2. In Docker Desktop, go to the "Settings" page and select the "Features in development" section.
3. Enable the "Use Rosetta for x86/amd64 emulation on Apple Silicon" option.

With these settings in place, you should be able to run the Docker environment on your Apple Silicon Mac without any issues.


## Contributing

We welcome contributions to improve this research framework. If you have suggestions or improvements, please submit a pull request or open an issue. Thank you for your interest in this project!
