import { login } from '../src/login.js';

test('valid login', () => { expect(login('admin', '123')).toBe(true); });
test('invalid login', () => { expect(login('user', '123')).toBe(false); });
