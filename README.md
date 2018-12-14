# dart_http

This wraps send method from http package <https://github.com/dart-lang/http>

## Usage

As example, when retireving an item detail with provided `id`

```dart
var response = await sendRequest(HTTPMethod.get, "http://localhost/item/${id}");
```

This will return `Response` object
Most of the time we will only need to handle `statusCode` and `body` from `response`.

### URI Param

```dart
var params = Map();
params['page'] = 1;
params['limit'] = 10;

var response = await sendRequest(HTTPMethod.get, "http://localhost/items", params:params);
```

### Headers

```dart
var headers = Map();
headers['content-type'] = "application/json";

var response = await sendRequest(HTTPMethod.get, "http://localhost/items", headers:headers);
```

### Timeout

This will throw `RequestTimeoutException` if response not received within timeout. Default to 20 seconds

```dart
var response = await sendRequest(HTTPMethod.get, "http://localhost/items", timeout: Duration(seconds: 10));
```