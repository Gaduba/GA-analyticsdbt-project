# Online Restaurant Data Cleanup and Transformation Project

## Introduction

This project focuses on cleaning, transforming, and modeling data from an online restaurant's operations. The primary objective is to extract valuable insights from raw data stored in CSV format, which includes JSON columns. By utilizing dbt, Google Cloud Storage, SQL, and Fivetran, we aim to create a structured and efficient data mart for comprehensive analysis.

## Project Overview

### Data Sources

- **CSV File:** Raw data from the online restaurant, containing JSON columns with nested information.

### Tools and Technologies

- **DBT (Data Build Tool):** For data transformation and modeling, enabling version control and modular development.
- **Google Cloud Storage:** For storing and managing the raw and transformed data.
- **SQL:** Utilized for data cleanup and transformation processes, including flattening JSON structures and cleaning up inconsistencies.
- **Fivetran:** Used for seamless integration and data extraction from the source systems.


## Key Steps

1. **Data Extraction:**
   - Extracted raw data from the CSV file, including JSON columns with relevant information.

2. **Data Cleanup:**
   - Implemented SQL queries to clean and validate the data, addressing issues such as missing values, incorrect formats, and outliers.
   - Flattened nested JSON structures to create a more accessible format for analysis.

3. **Data Transformation:**
   - Created data models using dbt to structure the data for easy access and analysis.
   - Developed data marts tailored for various analytical purposes, such as sales performance, customer behavior, and inventory management.

## Outcome

The final output of this project is a set of cleaned, structured, and easily accessible data marts that provide valuable insights into the online restaurant's operations. These marts can be utilized for various analyses, including sales trends, customer engagement, and inventory management, ultimately supporting data-driven decision-making.

## Future Work

- Continuously monitor and refine the data transformation processes to accommodate new data sources and changing business needs.
- Explore additional analytics tools for advanced insights and reporting capabilities.

## Conclusion

This project demonstrates the importance of effective data cleanup and transformation in making raw data actionable. By leveraging modern tools and methodologies, we empower the online restaurant to enhance its data-driven strategies and improve overall business performance.
