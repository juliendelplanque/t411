# t411
A wrapper for T411 web api written in Pharo.

## Installation
~~~
Metacello new
    baseline: 'T411';
    repository: 'github://juliendelplanque/t411/repository';
    load.
~~~

## Use this project as a dependency of your project
~~~
spec baseline: 'T411' with: [
    spec repository: 'github://juliendelplanque/t411/repository' ].
~~~

## How to use it?
The first thing to do if you want to use T411's api is to get a token:
~~~
api := T4Api new.
token := api retrieveAndSetTokenForUser: 'yourUsername' password: 'yourPassword'.
~~~

Once it's done, you can browse the API and download torrents:
~~~
api search: ((T4SearchQuery queryString: 'stuff') limit: 5). "Return a list of 5 T4Torrents."
api me. "Return a T4User that is you!"
api details: 424242. "Get details on the torrent with id 424242."
~~~

~~~
"This will download the torrent with id 424242 and store it in /tmp directory."
api download: 424242 in: FileLocator temp named: 'TheBestTorrentFileName'.
~~~
