mock_provider "aws" {}

override_module {
  target = module.test
  outputs = {
    id = "test"
  }
}

run "test" {

}
