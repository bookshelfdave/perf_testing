node.default['plugins'] = {
    "syslog" => {
      "config" => { "LogLevel" => "Info" }
    },
    "disk"      => { },
    "swap"      => { },
    "memory"    => { },
    "cpu"       => { },
    "interface" => {
      "config" => { "Interface" => "lo", "IgnoreSelected" => true }
    },
    "df"        => {
      "config" => {
        "ReportReserved" => false,
        "FSType" => [ "proc", "sysfs", "fusectl", "debugfs", "devtmpfs", "devpts", "tmpfs" ],
        "IgnoreSelected" => true
      }
    }
  }
