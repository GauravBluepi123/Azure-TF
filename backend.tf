terraform {
  cloud {
    organization = "BluePi"

    workspaces {
      name = env.Azure-TF
    }
  }
}
