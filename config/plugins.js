module.exports = ({ env }) => ({
  upload: {
    provider: "aws-s3-use-cdn",
    providerOptions: {
      accessKeyId: env("AWS_ACCESS_KEY_ID"),
      secretAccessKey: env("AWS_ACCESS_SECRET"),
      region: env("AWS_REGION"),
      params: {
        Bucket: env("AWS_BUCKET"),
      },
      actionOptions: {
        upload: {},
        uploadStream: {},
        delete: {},
      },
      cdnDomain: env("AWS_CDN_DOMAIN"),
      bucketSubDirectory: env("AWS_BUCKET_SUBDIRECTORY"),
    },
  },
});