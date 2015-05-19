I am the object you can use to talk to the t411 api.

Before using me, you must set my token like this:
t411Api := T4Api new.
t411Api retrieveAndSetTokenForUser: 'username' password: 'password'.

Then, I'm able to send requests to the api.

Note: my token is available for 90 days, after this delay you'll have to ask for another.