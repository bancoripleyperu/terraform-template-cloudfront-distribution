require 'awspec'

service_bucket = `cd examples/test/ && terraform output bucket`.strip.delete('"')
service_lambda = `cd examples/test/ && terraform output lambda`.strip.delete('"')
service_cloudfront = `cd examples/test/ && terraform output cloudfront`.strip.delete('"')

describe s3_bucket(service_bucket.to_s) do
    it { should exist }
end

describe lambda(service_lambda.to_s) do
    it { should exist }
end

describe cloudfront_distribution(service_cloudfront.to_s) do
    it { should exist }
end