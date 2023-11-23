import pandas as pd
df = pd.read_csv('../Resources/austin_weather_2017.csv')
print(df.head())
# """
# Find the number of hot days in Austin for 2017
# """
# from mrjob.job import MRJob

# class Hot_Days(MRJob):
#     # Add your mapper function here.
#     def mapper(self, key, line):
#         (station, name, state, country, date, temp)
#     # Add your reducer function here.


# if __name__ == "__main__":
#     Hot_Days.run()