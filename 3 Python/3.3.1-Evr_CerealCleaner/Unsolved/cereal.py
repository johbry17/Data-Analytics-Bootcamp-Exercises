import os
import csv

cereal_csv = os.path.join("..", "Resources", "cereal_bonus.csv")
with open(cereal_csv) as file:
    reader = csv.reader(file)

    for row in reader:
        if float(row[7]) >= 5:
            print(row)