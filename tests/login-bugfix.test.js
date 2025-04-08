import { login } from '../src/login.js';

test('login falha com delay', async () => {
  await new Promise(r => setTimeout(r, 200));
  expect(login('user', 'wrong')).toBe(false);
});

// Teste proposital com falha

test('falha proposital', () => {
  expect(false).toBe(true);
});
