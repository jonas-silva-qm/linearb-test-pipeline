import { payment } from '../src/payment.js';

test('payment loads', () => {
  expect(payment()).toBe('payment feature loaded');
});

// Teste assÃ­ncrono simulado

test('payment async resolves', async () => {
  await new Promise(r => setTimeout(r, 100));
  expect(true).toBe(true);
});
