# Use the official Jupyter Docker image as a base
FROM jupyter/base-notebook:latest

# Set the working directory in the container
WORKDIR /home/jovyan/work

# Copy the contents of the repository into the container
COPY . .

# Install the required Python packages
RUN pip install --no-cache-dir \
    requests \
    pandas \
    numpy \
    matplotlib \
    seaborn

# Expose the port JupyterLab will run on
EXPOSE 8888

# Start JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root"]
