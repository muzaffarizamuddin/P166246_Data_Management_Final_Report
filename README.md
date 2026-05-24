**Introduction**

This is a study regarding air quality levels during 2025 August to October Haze season
Below snapshot shows 1 of the peaks during this season of Haze where west coast cities saw poor Air Quality reading.

<img width="1247" height="733" alt="image" src="https://github.com/user-attachments/assets/ec09d53e-c511-49da-a94e-1e95e80437ce" />

How To Use:
1. Run historical_AQI_data_combine.ipynb in Colab to get started. Data should be auto downloaded from google drive. Here is a link to the Colab file:
    https://colab.research.google.com/github/muzaffarizamuddin/P166246_Data_Management_Final_Report/blob/main/historical_AQI_data_combine.ipynb
2. Go to this website for a quick view of the data to be studied:
    https://muzaffarizamuddin.github.io/P166246_Data_Management_Final_Report/
3. Data is acquired from https://aqicn.org/city/malaysia/ where the data source is stated to be from DOE Malaysia.

**Key Findings**

This study successfully established a robust, physically interpretable predictive framework for ground-level particulate matter ($\text{PM}_{2.5}$) accumulation across Peninsular Malaysia during the critical transboundary haze window of August to October 2025. Based on empirical weather data (Rain and Wind) aggregated across 46 Peninsular monitoring stations and regional satellite hotspot counts in Sumatra, Kalimantan and Thailand, a predictive equation for maximum regional pollution is formulated as follows:

<img width="541" height="164" alt="image" src="https://github.com/user-attachments/assets/146627a4-47e2-46e9-8529-2f7684e0bf9d" />

The fitted multiple linear regression forecast is plotted against actual values as shown below:

<img width="1484" height="1284" alt="image" src="https://github.com/user-attachments/assets/a5be4037-9b62-4c5a-9b70-66aa0cbe3ea0" />

This model calculates the daily peak pollution ($PM_{2.5}$) across Peninsular Malaysia by starting with a fixed atmospheric background concentration of $87.78\ \mu\text{g/m}^3$ and adjusting it based on five regional conditions. Active fires in Sumatra have an immediate, major compounding impact by blowing smoke directly across the Malacca Strait ($\beta = +0.28$), while direct emissions within Peninsular Malaysia register a delayed overnight spike ($\beta = +2.64$). Concurrent fire activity in Sabah and Sarawak serves as a strong marker for severe macro-regional droughts and high-pressure stagnation that trap local pollution ($\beta = +3.33$). Conversely, localized precipitation functions as a vital atmospheric cleanser, physically scrubbing out and dropping the pollution ceiling by roughly $0.82\ \mu\text{g/m}^3$ for every millimeter of rain ($\beta = -0.82$). Finally, active fires in Kalimantan carry a slight negative relationship ($\beta = -0.06$) because the prevailing monsoon winds push their smoke plumes northward into the South China Sea and completely away from mainland Malaysia, serving as a clean boundary marker for the model.
