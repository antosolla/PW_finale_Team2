
import pandas as pd
import numpy as np

df = pd.read_csv("student_burnout_dropout_dataset_2.csv")

df_clean = df.dropna()
print(df_clean.corr(numeric_only=True))

#STRESS LEVEL PER ANNO DI STUDIO
df_stress_year = df_clean.groupby("Year_of_Study")["Stress_Level"].mean().reset_index()
df_stress_year.columns = ["Year of Study", "Average Stress Level"]
print("\n LIVELLO DI STRESS PER ANNO DI STUDI\n", df_stress_year)





