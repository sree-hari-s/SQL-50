--1683. Invalid Tweets
select 
    tweet_id
from 
    Tweets
where
    len(content)>15