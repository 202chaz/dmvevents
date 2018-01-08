require "shrine/storage/s3"

s3_options = {
  access_key_id: ENV['DIGITALOCEAN_SPACES_KEY'],
  secret_access_key: ENV['DIGITALOCEAN_SECRET_SECRET'],
  bucket: ENV['DIGITALOCEAN_BUCKET_BUCKET'],
  endpoint: 'https://nyc3.digitaloceanspaces.com',
  region: 'nyc3'
}

Shrine.storages = {
  cache: Shrine::Storage::S3.new( prefix: 'cache', upload_options: {acl: 'public-read'}, **s3_options),
  store: Shrine::Storage::S3.new( prefix: 'store', upload_options: {acl: 'public-read'}, **s3_options),
}