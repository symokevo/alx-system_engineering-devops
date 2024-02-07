# API Usage

APIs (Application Programming Interfaces) are a way for software applications to communicate and exchange information with each other. They allow you to programmatically access data and functionality from other applications, such as social media platforms, weather services, or e-commerce sites.

This README file explains how to use an API with pagination, how to parse JSON results from an API, how to make a recursive API call, and how to sort a dictionary by value.

## How to Use an API with Pagination

Sometimes, the data you want to retrieve from an API is too large to be returned in a single request. In this case, the API may use pagination, which means it will split the data into multiple pages or results and return them one at a time. To access all the data, you need to make multiple requests and combine the results.

To use an API with pagination, you typically need to specify the page number or the offset and limit parameters in your request. For example, if an API returns 50 results per page and you want to retrieve the first 100 results, you would make two requests with the following parameters:

* First request: `page=1&limit=50`
* Second request: `page=2&limit=50`

You can then combine the results from both requests to get the full set of data.

## How to Parse JSON Results from an API

Many APIs return data in JSON (JavaScript Object Notation) format, which is a lightweight and easy-to-read format for representing data. JSON data consists of key-value pairs, where the keys are strings and the values can be strings, numbers, booleans, arrays, or other objects.

To parse JSON results from an API in Python, you can use the built-in `json` module. Here's an example of how to parse JSON data from an API:

```python
import requests
import json

response = requests.get('https://api.example.com/data')
data = json.loads(response.text)
```

In this example, we're sending a GET request to an API and storing the response in the `response` variable. We then use the `json.loads()` method to parse the JSON data from the response and store it in the `data` variable.

## How to Make a Recursive API Call

Sometimes, an API may return a limited amount of data per request, or it may have rate limits that prevent you from making too many requests in a short period of time. In this case, you may need to make a recursive API call, which means making repeated requests until you retrieve all the data you need.

To make a recursive API call, you typically need to write a function that calls itself recursively until a certain condition is met. For example, you might want to retrieve all the tweets from a user's timeline, but the API only returns the most recent 200 tweets per request. To get all the tweets, you would make multiple requests with different `max_id` parameters until you reach the end of the timeline.

Here's an example of a recursive function that retrieves all the tweets from a user's timeline:

```python
import requests
import json

def get_all_tweets(user_id, access_token, max_id=None):
    tweets = []
    params = {'user_id': user_id, 'access_token': access_token}
    if max_id:
        params['max_id'] = max_id
    response = requests.get('https://api.twitter.com/1.1/statuses/user_timeline.json', params=params)
    if response.status_code == 200:
        data = json.loads(response.text)
        tweets += data
        if len(data) == 200:
            last_tweet_id = data[-1]['id']
            tweets += get_all_tweets(user_id, access_token, last
