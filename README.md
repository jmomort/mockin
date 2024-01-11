# Mockin - A Mock Login Server for Hellō

Mockin is a mock of the Hellō of the OpenID Connect Login Service and implements the authorization, token, introspection, and userinfo endpoints. 

- Development - speeds up development as you won't be redirecting through the Hellō production server. 
- Testing - simplifies creating end to end tests, and with the `/mock` APIs, can simulate expired and invalid responses allowing you to ensure your app properly handles all exceptions, improving your security posture.

## Usage

Mockin is available as both an npm module and a docker image:

`npx @hellocoop/mockin@latest`

`docker run  -d -p 3333:3333 hellocoop/mockin:latest`

## Issuer

Mockin defaults to `http://127.0.0.1:3333` as the Issuer. Override by setting the `ISSUER` environment variable.

## Mock API

The mock API can change the returned claims, simulate errors, and invalid ID Tokens.

For detailed information on installation, usage, and examples, visit the [documentation](https://www.hello.dev/docs/mockin).
