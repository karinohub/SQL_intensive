COMMENT ON TABLE person_discounts IS 'В таблице "person_discounts" рассчитана персональная скидка по ID клиента';
COMMENT ON COLUMN person_discounts.id IS 'ID';
COMMENT ON COLUMN person_discounts.person_id IS 'ID клиента';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'ID пиццерии';
COMMENT ON COLUMN person_discounts.discount IS 'Скидка клиента в процентах';