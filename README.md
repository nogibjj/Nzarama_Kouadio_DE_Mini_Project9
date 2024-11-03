
# Data Engineering Project - Mini Project 9

[![CI Test Jupyter Notebook](https://github.com/nogibjj/Nzarama_Kouadio_DE_Mini_Project9/actions/workflows/notebook.yml/badge.svg)](https://github.com/nogibjj/Nzarama_Kouadio_DE_Mini_Project9/actions/workflows/notebook.yml)

### Project Overview
This project demonstrates data engineering skills by leveraging Google Colab for data manipulation tasks and integrating a GitHub Actions CI/CD pipeline to automate testing. The notebook processes a dataset about the US demographic, performs various analyses, and ensures code quality through automated testing in the cloud.

**Link to cloud-hosted notebook**: [Google Collab](https://colab.research.google.com/drive/1b4Mu7L5mAJBJ3lDNMZMwWt_xRKgr1zaj?usp=sharing)

### Dataset and Data Manipulation

**Dataset Overview**: I used the American Community Survey (ACS) dataset to analyze income distribution and demographic disparities in the U.S. This dataset includes various characteristics like income, age, employment status, and race, enabling us to explore income inequality across different groups.

**Source**: [ACS Data on GitHub](https://github.com/nickeubank/MIDS_Data/raw/refs/heads/master/US_AmericanCommunitySurvey/US_ACS_2017_10pct_sample.dta?download=)

**The main objectives were to**:

- Calculate average income levels for various demographic groups.

- Clean and prepare data by handling missing values.

- Perform weighted calculations for accurate population estimates.

- Identify income gaps between different racial and demographic groups.

**Key Findings**:

- **Average Income Disparities**: Significant income disparities were observed between racial groups, with White non-Hispanic individuals generally earning higher average incomes than Black individuals.

- **Income Distribution Analysis**: The dataset revealed a skewed income distribution, with a small portion of the population earning extremely high incomes. By replacing placeholders with NaN, we ensured more accurate mean calculations, excluding unrealistic values.

- **Weighted Income Averages**: Using survey weights provided a more representative income estimate, accounting for sampling differences. This approach highlighted the importance of weighting in understanding true population characteristics.

- **Wage Gap Analysis**: The wage gap calculation showed that White non-Hispanic Americans earned approximately 52.5% more on average than Black Americans. This quantifies the income inequality within the dataset and provides a measurable view of demographic income disparities.

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
   git clone https://github.com/nogibjj/Nzarama_Kouadio_DE_Mini_Project9.git
   ```

2. **Install Dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

### CI/CD Pipeline
The CI/CD pipeline is set up using GitHub Actions. It automates testing and ensures the notebook runs without errors whenever code is pushed to the repository.

  - **Install Packages**: Installs dependencies listed in `requirements.txt`.
  - **Format Code**: Checks code formatting with `black`.
  - **Lint Code**: Checks code quality using `flake8`.
  - **Run Tests**: Runs tests on the notebook using `pytest --nbval-lax`.

The pipeline will automatically trigger on each push to the `main` branch, validating the notebook’s functionality.

