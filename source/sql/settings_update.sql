INSERT INTO settings (user_id, allow_ru, allow_be, allow_uk) VALUES ($1, $2, $3, $4)
ON CONFLICT (user_id) DO UPDATE SET allow_ru = EXCLUDED.allow_ru, allow_be = EXCLUDED.allow_be, allow_uk = EXCLUDED.allow_uk;