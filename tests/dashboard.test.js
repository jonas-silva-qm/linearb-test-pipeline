import { dashboard } from '../src/dashboard.js';

test('dashboard loads', () => {
  expect(dashboard()).toBe('dashboard feature loaded');
});
