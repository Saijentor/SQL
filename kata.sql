-- Regex AlphaNumeric Split
select project, 
  regexp_replace (address, '\d', '', 'g') letters, 
  regexp_replace (address, '\D', '', 'g') numbers
from repositories
