"""
What was the max amount of snow per date?
"""
from mrjob.job import MRJob


class Snow_days(MRJob):

    def mapper(self, key, line):
        (station, name, state, date, snow, tmax, tmin) = line.split(",")
        if snow and float(snow) > 0:
            yield date, snow

    def reducer(self, key, value):
        yield key, max(value)


if __name__ == "__main__":
    Snow_days.run()
