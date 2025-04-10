import { payment } from '../src/payment.js';

test('payment loads', () => {
  expect(payment()).toBe('payment feature loaded');
});
