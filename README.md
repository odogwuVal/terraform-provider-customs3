### terraform-provider-customs3
In this repository, I have attempted to create a custom terraform repository that will create, update, delete and read s3 buckets on AWS.

##### usage
add this block of code in .terraformrc file in your home directory.
```
provider_installation {

  dev_overrides {
      "hashicorp.com/edu/customs3" = "/Users/valentinemadu/go/bin"
  }

  # For all other providers, install them directly from their origin provider
  # registries as normal. If you omit this, Terraform will _only_ use
  # the dev_overrides block, and so no other providers will be available.
  direct {}
}
```

this informs terraform to use the provider from your local since we have not published the provider and terraform cannot download it from the provider registry.

you do not have to run ```terraform init``` because it will make terraform want to search for your provider in a custom registry. This will lead to an error since it does not exist.

go ahead and edit the main.tf in buckets folder to the name and tag of your choice.
Also add your secret access key and access key as environment variables and run
```terraform plan``` and ```apply```

NOTE: This provider uses the terraform provider framework

reference: ```https://spacelift.io/blog/terraform-custom-provider```
