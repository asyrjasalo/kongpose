# Setup Kong APIs using declarative configuration

Install [aio-kong](https://github.com/lendingblock/aio-kong) (requires Python >=3.6):

    pip install --user --upgrade aio-kong==0.4.0

## Loopback service for Kong Admin API

Create [a loopback service for Kong Admin API](https://docs.konghq.com/0.14.x/secure-admin-api/#kong-api-loopback):

    kong --yaml kongadmin.yaml

Then key for the Kong Admin API consumer:

    kong --yaml kongadmin.yaml --key-auth root

## Example service for Mockbin

Create the example service for [Mockbin](https://mockbin.org):

    kong --yaml mockbin.yaml

Then key for the created consumer:

    kong --yaml mockbin.yaml --key-auth mockbinuser

To test the created service:

    MOCKBIN_USER_SECRET=<keyfromthepreviousoutput> ./test_mockbin_with_auth
