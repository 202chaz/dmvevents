require "shrine/storage/s3"

s3_options = {
  access_key_id: "FZYSCRABCOA5CCYCWSYH",
  secret_access_key: "xkgZfwLsGjtTV4BEtFEUkA1A0WktgwQL70lvCuo3NMY",
  bucket: "dmvevents",
  endpoint: 'https://nyc3.digitaloceanspaces.com',
  region: 'nyc3'
}

Shrine.storages = {
  cache: Shrine::Storage::S3.new( prefix: 'cache', upload_options: {acl: 'public-read'}, **s3_options),
  store: Shrine::Storage::S3.new( prefix: 'store', upload_options: {acl: 'public-read'}, **s3_options),
}