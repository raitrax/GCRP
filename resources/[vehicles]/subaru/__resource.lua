resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

data_file 'VEHICLE_LAYOUTS_FILE' 'subaru/vehiclelayouts.meta'
data_file 'HANDLING_FILE' 'subaru/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'subaru/vehicles.meta'
data_file 'CARCOLS_FILE' 'subaru/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'subaru/carvariations.meta'

files {
  'subaru/vehiclelayouts.meta',
  'subaru/handling.meta',
  'subaru/vehicles.meta',
  'subaru/carcols.meta',
  'subaru/carvariations.meta',
}

client_script 'vehicle_names.lua'
