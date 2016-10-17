settings {
  nodaemon = true
}
-- sync {
--   default.rsyncssh,
--   source    = "/home/andrey/rating.n1.ru",
--   host      = "root@ngs.ru.andr.d",
--   targetdir = "/data/projects/rating.n1.ru",
--   delay     = 0,
--   exclude   = {".git", ".idea"},
--   rsync     = {
--     copy_links = true,
--     perms = true
--   }
-- }

sync {
  default.rsyncssh,
  source    = "/home/andrey/n1.ru",
  host      = "root@ngs.ru.andr.d",
  targetdir = "/data/projects/n1.ru",
  delay     = 0,
  exclude   = {".git", ".idea"},
  rsync     = {
    copy_links = true,
    perms = true
  }
}


-- sync {
--   default.rsyncssh,
--   source    = "/home/andrey/love.ngs.ru",
--   host      = "root@ngs.ru.andrlove.d",
--   targetdir = "/data/projects/love.ngs.ru",
--   delay     = 0,
--   exclude   = {".git", ".idea"},
--   rsync     = {
--     copy_links = true,
--     perms = true
--   }
-- }