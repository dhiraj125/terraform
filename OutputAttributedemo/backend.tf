terraform {
  backend "s3" {
      bucket = "tf-state-dhiraj"
      key = "Development"
      region = "us-west-2" 
    
  }
}