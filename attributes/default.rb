node.default['collectd']['python_plugins'] = {}
node.default['collectd']['version'] = "5.4.1"
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
