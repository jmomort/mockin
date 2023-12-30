# Mockin - A Mock Login Server for Hellō

Mockin is a versatile OpenID Connect Service designed specifically for Hellō, offering a comprehensive implementation of its functionalities. It's available both as an npm module and a Docker image, providing flexibility for various development environments.

## Development Integration

Integrating Mockin into your app's workflow simplifies the development process. By configuring your application to utilize Mockin, the `[ ō Continue with Hellō ]` button triggers an automatic login flow. This feature accelerates the development phase by streamlining user login and registration. 

## Comprehensive Testing

Mockin is compatible with leading browser test frameworks like Selenium, Cypress, and Playwright, ensuring a broad range of testing possibilities. It facilitates the testing process by handling the authorization requests and responses seamlessly. After your app redirects requests to the autorization endpoint, Mockin will immediately return the authorization response according to the specified or default `response_mode`. 

The mock API can simulate errors, and invalid ID Tokens, allowing you to ensure your app properly handles all exceptions, improving your security posture.

For detailed information on installation, usage, and examples, visit the [documentation](https://www.hello.dev/docs/mockin).
