# IPis

Because I got sick of going to ip2location.com in my browser.

## Installation

Install it:

    $ gem install ipis

## Usage

    $ ipis [IPs to query separated by spaces]
    
    as:  AS7922 Comcast Cable Communications, LLC
    city:  Minneapolis
    country:  United States
    countryCode:  US
    isp:  Comcast Cable Communications
    lat:  44.9778
    lon:  -93.2650
    org:  Comcast IP Services, L.L.C.
    region:  MN
    regionName:  Minnesota
    status:  success
    timezone:  America/Chicago
    zip:  55416

## Notes

* Uses [ip-api.com](https://ip-api.com) for querying. 
* Depends on the great [HTTP.rb](https://github.com/httprb/http)
* If you don't specify a list of IPs to query, it'll still run the query against your current IPv4