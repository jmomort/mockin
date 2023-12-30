# Mockin - A Mock Login Server for Hellō

Mockin is a versatile OpenID Connect Service designed specifically for Hellō, offering a comprehensive implementation of its functionalities. It's available both as an npm module and a Docker image, providing flexibility for various development environments.

## Development Integration

Integrating Mockin into your app's workflow simplifies the development process. By configuring your application to utilize Mockin, the `[ ō Continue with Hellō ]` button triggers an automatic login flow. This feature accelerates the development phase by streamlining user authentication.

## Comprehensive Testing Compatibility

Mockin is compatible with leading browser test frameworks like Selenium, Cypress, and Playwright, ensuring a broad range of testing possibilities. It facilitates the testing process by handling the authorization requests and responses seamlessly. The tool redirects authorization requests to its endpoint and returns the authorization response according to the specified or default `response_mode`, without any user interaction. This process allows your application to handle various responses, including `code`, `id_token`, or even `error` responses, which simulate scenarios like user request cancellations.

Moreover, Mockin's mock API is capable of simulating all potential errors from Hellō's endpoints. It also allows for the creation of invalid or expired ID Tokens, adding another layer of testing robustness.

For detailed information on installation, usage, and examples, visit the [documentation](https://www.hello.dev/docs/mockin).
