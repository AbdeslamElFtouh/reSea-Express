INSERT IGNORE INTO product_category (product_id, category_id)
SELECT p.id, c.id
FROM products p
JOIN categories c ON c.slug = 'occhiali-da-vista'
WHERE p.slug IN (
  'ecomarea',
  'tramonto-di-plastica',
  'bagliore-marino',
  'profondita-reclutata',
  'poseidon-net'
);

INSERT IGNORE INTO product_category (product_id, category_id)
SELECT p.id, c.id
FROM products p
JOIN categories c ON c.slug = 'occhiali-da-sole'
WHERE p.slug IN (
  'abisso-rigenerato',
  'poseidon-wave',
  'corallo-degli-abissi',
  'orizzonte-di-fuoco',
  'ambra-della-costa'
);

INSERT IGNORE INTO product_category (product_id, category_id)
SELECT p.id, c.id
FROM products p
JOIN categories c ON c.slug = 'accessori'
WHERE p.slug IN (
  'cordoncino-gavitello',
  'cordoncino-ancora',
  'cordoncino-salvagente',
  'cordoncino-abisso',
  'cordoncino-veliero',
  'custodia-corallo',
  'custodia-abisso',
  'custodia-alga',
  'custodia-fondale',
  'custodia-arenile'
);