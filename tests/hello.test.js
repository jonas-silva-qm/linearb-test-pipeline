// tests/sum.test.js
import { sum } from '../src/sum.js';

test('sum adds two numbers', () => {
  expect(sum(2, 3)).toBe(5);
});

test('sum throws error for invalid args', () => {
  expect(() => sum(2, 'a')).toThrow('Both arguments must be numbers');
});
