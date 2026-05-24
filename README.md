#Readme / Introduction
This is a study regarding air quality levels during 2025 August to October Haze season
Below snapshot shows 1 of the peaks during this season of Haze where west coast cities saw poor Air Quality reading.

<img width="1247" height="733" alt="image" src="https://github.com/user-attachments/assets/ec09d53e-c511-49da-a94e-1e95e80437ce" />

How To Use:
1. Run historical_AQI_data_combine.ipynb in Colab to get started. Data should be auto downloaded from google drive. Here is a link to the Colab file:
    https://colab.research.google.com/github/muzaffarizamuddin/P166246_Data_Management_Final_Report/blob/main/historical_AQI_data_combine.ipynb
2. Go to this website for a quick view of the data to be studied:
    https://muzaffarizamuddin.github.io/P166246_Data_Management_Final_Report/
3. Data is acquired from https://aqicn.org/city/malaysia/ where the data source is stated to be from DOE Malaysia.

##Key Findings

This study successfully established a robust, physically interpretable predictive framework for ground-level particulate matter ($\text{PM}_{2.5}$) accumulation across Peninsular Malaysia during the critical transboundary haze window of August to October 2025. Based on empirical weather data (Rain and Wind) aggregated across 46 Peninsular monitoring stations and regional satellite hotspot counts in Sumatra, Kalimantan and Thailand, a predictive equation for maximum regional pollution is formulated as follows:

$$
\begin{aligned}
\text{Max\_PM}_{2.5} = 87.7837 &+ 0.2752(\text{Sumatra\_Lag0}) \\
&+ 3.3310(\text{Sabah\ Sarawak\_Lag0}) \\
&+ 2.6373(\text{Peninsular\ Malaysia\_Lag1}) \\
&- 0.8214(\text{Rain\_mm}) \\
&- 0.0558(\text{Kalimantan\_Lag0})
\end{aligned}
$$

The fitted multiple linear regression forecast is plotted against actual values and is show below:

<img width="1484" height="1284" alt="image" src="https://github.com/user-attachments/assets/a5be4037-9b62-4c5a-9b70-66aa0cbe3ea0" />
