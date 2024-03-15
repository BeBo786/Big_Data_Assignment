# Titanic Dataset Analysis Pipeline README

## Project Structure

- `bd-a1/`: Main directory for the project.
  - `data/`: Contains the Titanic dataset.
  - `docker/`: Contains Docker related files.
    - `Dockerfile`: Specifies the Docker image configuration.
  - `service-result/`: Directory to store output files.
  - `scripts/`: Contains bash script for copying output files and stopping the container.
    - `final.sh`: Bash script to copy output files to local machine and stop the container.
  - `src/`: Contains Python scripts for data processing and analysis.
    - `load.py`: Loads dataset dynamically.
    - `dpre.py`: Performs data preprocessing steps.
    - `eda.py`: Conducts exploratory data analysis.
    - `vis.py`: Generates visualization.
    - `model.py`: Implements K-means clustering.
- `README.md`: This file.

## Docker Image

The Dockerfile specifies the configuration for the Docker image. It installs necessary packages and sets up the environment. The image is built using the following command:

```bash
docker build -t  bd-a1-image .
```

## Running the Container

Once the Docker image is built, the container can be run using the following command:

```bash
docker run -it --name asss titanic-analysis /bin/bash
```

## Executing the Pipeline

1. Inside the container, navigate to the `/src/` directory.
2. Run the data loading script to start the pipeline:

```bash
python3 load.py train_titanic.csv
```

This command initiates the pipeline, which sequentially executes preprocessing, EDA, visualization, and clustering tasks.

## Output Files

Upon completion of the pipeline, the output files are generated in the `bd-a1/service-result/` directory within the container. These files include:

- `res_dpre.csv`: Processed dataset after preprocessing.
- `eda-in-1.txt`, `eda-in-2.txt`, ...: Insights from exploratory data analysis.
- `vis.png`: Visualization generated.
- `k.txt`: Number of records in each cluster after clustering.

## Copying Output Files and Stopping Container

To copy the output files to the local machine and stop the container, run the following bash script from the `bd-a1/` directory on your local machine:

```bash
./final.sh
```

This script copies the output files to `bd-a1/service-result/` on the local machine and stops the Docker container.

## Bonus Tasks

- The Docker image is pushed to Docker Hub with the tag `titanic-analysis`.
- All project files are pushed to a GitHub repository.

## Execution Summary

To execute the project:
1. Build the Docker image.
2. Run the Docker container.
3. Execute the pipeline inside the container.
4. Copy output files to the local machine and stop the container using the bash script.

## Docker Commands Used

![Commands](commands.jpg)