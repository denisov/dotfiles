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
--     copy_links = false,
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
    copy_links = false,
    perms = true
  }
}


sync {
  default.rsyncssh,
  source    = "/home/andrey/frontend",
  host      = "root@api.n1.ru.andr.d",
  targetdir = "/data/projects/n1-frontend",
  delay     = 0,
  exclude   = {".git", ".idea"},
  rsync     = {
    copy_links = false,
    perms = true
  }
}

-- sync {
--   default.rsyncssh,
--   source    = "/home/andrey/realty.ngs.ru",
--   host      = "root@ngs.ru.andr.d",
--   targetdir = "/data/projects/realty.ngs.ru",
--   delay     = 0,
--   exclude   = {".git", ".idea"},
--   rsync     = {
--     copy_links = true,
--     perms = true
--   }
-- }

sync {
  default.rsyncssh,
  source    = "/home/andrey/geo.ngs.ru",
  host      = "root@geo.ngs.ru.andrgeo.d",
  targetdir = "/data/projects/geo.ngs.ru",
  delay     = 0,
  exclude   = {".git", ".idea"},
  rsync     = {
    copy_links = false,
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
--     copy_links = false,
--     perms = true
--   }
-- }

sourceCodeDir = "/home/andrey/webapp"
envType = ".andr.d"

sync {
    default.rsyncssh,
    source=sourceCodeDir,
    host="root@ngs.ru" .. envType,
    targetdir="/data/projects/n1-webapp",
    exclude = {'node_modules', 'bower_components', '.git', '.cache'},
    delay = 1,
    delete = true,
    rsync = {
        binary = "/usr/bin/rsync",
        rsh = "ssh -i /home/andrey/.ssh/id_rsa",
        verbose = true,
        _extra = {"-aKx"},
    }
}