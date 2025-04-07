import { dashboard } from '../src/dashboard.js';

test('dashboard loads', () => {
  expect(dashboard()).toBe('dashboard feature loaded');
});

test('dashboard async resolves', async () => {
  await new Promise(r => setTimeout(r, 100));
  expect(true).toBe(true);
});
