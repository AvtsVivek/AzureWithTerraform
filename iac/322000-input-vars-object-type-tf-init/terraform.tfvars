instances = [ # you specified a list so we add the proper syntax here
  {           # you specified an object, so we remove the keys and retain the values
    type  = "t2.micro"
    count = 4
    tags  = { "Name" = "Test T2" } # you specified map(string) so Name becomes string
  },
  {
    type  = "m4-large"
    count = 2
    tags  = { "Name" = "Test M4" }
  }
]