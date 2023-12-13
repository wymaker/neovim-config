local M = {}
local utils = require("new-file-template.utils")

local function base_template(relative_path, filename)
  return [[
#include <bits/stdc++.h>
using namespace std;

int main() {
  #define taskname ""
  if (fopen (taskname".inp", "r")) {
    freopen (taskname".inp", "r", stdin);
    freopen (taskname".out", "w", stdout);
  }
  ios::sync_with_stdio(NULL); cin.tie(0);
  |cursor|
  return 0;
}
  ]]
end

return function(opts)
  local template = {
    { pattern = ".*", content = base_template },
  }
  return utils.find_entry(template, opts)
end
