
# Data Engineering Project - Mini Project 9

This project involves setting up a cloud-hosted Jupyter Notebook using Google Colab, performing data manipulation tasks on a sample dataset, and implementing a CI/CD pipeline to test and validate the notebook through GitHub Actions.

### Project Overview
This project demonstrates data engineering skills by leveraging Google Colab for data manipulation tasks and integrating a GitHub Actions CI/CD pipeline to automate testing. The notebook processes a dataset, performs various analyses, and ensures code quality through automated testing in the cloud.

### Dataset Information
- **Dataset Name**: ACS (American Community Survey) Data
- **Description**: The dataset includes a sample of U.S. population data used to examine income distribution across different demographics.
- **Source**: [ACS Data on GitHub](https://github.com/nickeubank/MIDS_Data/raw/refs/heads/master/US_AmericanCommunitySurvey/US_ACS_2017_10pct_sample.dta?download=)

### Requirements
To run the project locally, you need the following Python packages:
- `pandas`
- `numpy`
- `pytest`
- `nbval`
- `black` (for code formatting)

These packages are listed in the `requirements.txt` file.

### Project Structure
```
.
├── Mini_Project_9.ipynb      # Jupyter Notebook with data manipulation tasks
├── requirements.txt          # Project dependencies
├── README.md                 # Project documentation
├── Makefile                  # Commands for installation, testing, linting, and formatting
└── .github
    └── workflows
        └── notebook.yml      # GitHub Actions CI/CD workflow
```

### Setup Instructions
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/your-repo-name.git
   cd your-repo-name
   ```

2. **Install Dependencies**:
   - Make sure you have Python installed.
   - Install the required packages:
     ```bash
     pip install -r requirements.txt
     ```

3. **Google Colab Setup**:
   - Open [Google Colab](https://colab.research.google.com/).
   - Upload the `Mini_Project_9.ipynb` notebook or access it directly from your GitHub repository by opening it from a GitHub link in Colab.

### Running the Project
1. **Data Manipulation Tasks**:
   - Open the notebook in Google Colab.
   - Follow the instructions in each cell to load the data, perform analysis, and observe the results.

2. **Testing Locally (Optional)**:
   - Run the tests on your notebook locally using the command:
     ```bash
     pytest --nbval Mini_Project_9.ipynb
     ```

### CI/CD Pipeline
The CI/CD pipeline is set up using GitHub Actions. It automates testing and ensures the notebook runs without errors whenever code is pushed to the repository.

- **Workflow File**: `.github/workflows/notebook.yml`
- **Pipeline Steps**:
  - **Install Packages**: Installs dependencies listed in `requirements.txt`.
  - **Format Code**: Checks code formatting with `black`.
  - **Lint Code**: Checks code quality using `flake8`.
  - **Run Tests**: Runs tests on the notebook using `pytest --nbval`.

The pipeline will automatically trigger on each push to the `main` branch, validating the notebook’s functionality.

### Results
The notebook outputs and analyses are stored within the notebook itself, providing insights into income distribution in the U.S. population sample. Additional test results from the CI/CD pipeline are available in the **Actions** tab on GitHub.
