import { hello } from "../src/hello.js";
test("hello returns greeting", () => {
  expect(hello()).toBe("Hello, LinearB!");
});
