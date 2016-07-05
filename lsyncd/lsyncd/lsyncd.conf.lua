settings {
  nodaemon = true
}
sync {
  default.rsyncssh,
  source    = "/home/andrey/NNN",
  host      = "root@ngs.ru.andr.d",
  targetdir = "/data/projects/NNN",
  delay     = 0,
}
