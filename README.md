# Epoch-Time
A unified time library for LabVIEW

## Epoch Date & Time

This library provides support for UTC, Unix and GPS Epochs, enabling the conversion of timestamps into the proper frame of reference.
It supports leap seconds to accurately convert from UTC (coordinatad universal time) to GPS (global positioning system) to TAI (international atomic time).
It is completed with an extensible interface for Date-String formatters and comes pre-loaded with ISO8601 and RFC5322 support.

- ISO8601 is the international standard for date and time on almost every modern interoperable systems and databases.
- RFC5322 is the standard for email headers format, which includes a Date-Time string. This library covers only the date-time string part of the standard.

![Main Palette](https://user-images.githubusercontent.com/11728548/104111178-10d2c380-52ad-11eb-97ee-ade918c80ea0.png "Main Palette")

## Epochs

- UTC epoch starts on 1904-01-01
- Local System is referenced to UTC with a time offset (from -14:00 to +12:00)
- Unix epoch starts on 1970-01-01
- GPS epoch starts on 1980-01-06

## Popular methods

- Compare Timestamps (within resolution)
- isLeapYear
- Get Local UTC Offset
- UTC Offset to Seconds
- ISO8601 Formatting
- RFC5322 Formatting
### Epoch Class Methods
- GetEpochTime
- toTimestamp
- toDateTimeString

## ISO8601 Formats

Many different formats recognized by the ISO8601 standard are supported.

Taking the following date and time: January 1st, 2021 @ 11:50:22.587 in Montreal:

- UTC DateTime = 2021-01-09T16:50:22.587Z
- Non UTC DateTime = 2021-01-08T11:50:22.587-05:00
- ISO Date = 2021-01-09 or 20210109
- ISO Calendar month  = 2021-01
- ISO Week = 2021-W01
- ISO Week-Day = 2021-W01-6
- ISO Ordinal Date = 2021-009

The reverse operation (ISO8601 DateString to Timestamp) supports all the above accepted formats, validates the input string for compliance and returns the ISO Format type matched.

![ISO8601](https://user-images.githubusercontent.com/11728548/104110687-0f52cc80-52a8-11eb-8888-462fc7243fbf.png "ISO8601")

## RFC3339 Format

RFC3339 is based on ISO8601 but allows for a few deviations.
A notable one is the space to replace the "T" in the UTC DateTime. Instead of providing an entirely separate method, the DateTime to Timestamp exposes a "Strict ISO?" terminal which can be set to false to accept RFC3339 format as a valid date-time string.

![RFC3339](https://user-images.githubusercontent.com/11728548/104110707-4e811d80-52a8-11eb-8d5c-0809daea39c0.png "RFC3339")

## RFC5322 Format

RFC5332 is the Internet Email Date Format and is used in the email headers.
![RFC5332](https://user-images.githubusercontent.com/11728548/104110791-04e50280-52a9-11eb-8020-96b7e05be872.png "RFC5332")

## Compare Timestamps

Because of the high resolution of the LabVIEW Timestamps, and the limited resolution of date-time strings, validation of equality needs to be performed with a certain precision.
A practical method has been added to the palette to compare with a pre-defined resolution. The node defaults to 1 second, but can be set to any fractional of multiple of 1, and units available span from nanoseconds to weeks.
For simplicity, months and years have been ommitted because of extra computation required to handle leap years and different month lengths. All comparisons are performed in timestamp epoch (UTC).

## GPS, TAI and UTC

GPS clocks and International Atomic Time are continuous and evenly-spaced, whereas UTC compensates for the fluctuation of Earth's rotation to keep the "year" synchronized for human activities.
Therefore, leap seconds are sometimes added or removed to UTC time. Based on the history of the number of leap seconds added to the UTC, one must use this look-up table to make the exact time conversions.
Leap Seconds record is kept in a table maintained by an international consortium (https://www.ietf.org/timezones/data/leap-seconds.list)

![GPS-Unix](https://user-images.githubusercontent.com/11728548/104110804-2d6cfc80-52a9-11eb-8ef9-36ea583df8c7.png "GPS and Unix Time")

Notable facts: 
- UTC Time accepts "YYYY-12-31T23:59:60Z" to allow for leap seconds to be introduced (note the seconds segment = 60)
- GPS Clock is permanently offset from TAI by 19 seconds
- UTC is, in 2021, offset by 37 seconds from TAI... and 18 seconds from GPS (37s - 19s)

A practical method has been added to the palette to compare with a pre-defined resolution. The node defaults to 1 millisecond, but can be set to any fractional of multiple of 1, and units available span from nanoseconds to weeks.
