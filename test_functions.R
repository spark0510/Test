#library("FaaSr")

TestF <- function(faasr) {


  # tbd
  # tbd
  
  setwd("FAASR")
} 

F1 <- function(faasr) {
  # print("Hello from inside function F1")
  args <- faasr_get_user_function_args(faasr)
  # return arguments for this function (F1)
  # expects input1, input2: input file names; output: 
  faasr_get_file(faasr, "S3_A", "folder", args$input1, "local", "input1.csv")
  faasr_get_file(faasr, "S3_A", "folder", args$input2, "local", "input2.csv")
  # need to implement output <- input1 * input2
  # if there's a header in each csv file, "header=T"
  input1 <- read.table("local/input1.csv", sep=",", header=T)
  input2 <- read.table("local/input2.csv", sep=",", header=T)
  output <- input1 + input2
  # if there's a header in csv file, "col.names=T"
  write.table(output, file="local/output.csv", sep=",", row.names=F, col.names=T)
  faasr_put_file(faasr, "S3_A", "local", "output.csv", "folder", args$output)
  faasr_log(faasr, "User function F1 finished")
}	


F2 <- function(faasr) {
  # print("Hello from inside function Fs")
  args <- faasr_get_user_function_args(faasr)
  # return arguments for this function (F2)
  # expects input1, input2: input file names; output: 
  faasr_get_file(faasr, "S3_A", "folder", args$input1, "local", "input1.csv")
  faasr_get_file(faasr, "S3_A", "folder", args$input2, "local", "input2.csv")
  # need to implement output <- input * input
  # if there's a header in each csv file, "header=T"
  input1 <- read.table("local/input1.csv", sep=",", header=T)
  input2 <- read.table("local/input2.csv", sep=",", header=T)
  output <- input2 - input1
  # if there's a header in csv file, "col.names=T"
  write.table(output, file="local/output.csv", sep=",", row.names=F, col.names=T)   
  faasr_put_file(faasr, "S3_A", "local", "output.csv", "folder", args$output)
  faasr_log(faasr, "User function F2 finished")
}	

F2.5 <- function(faasr){
  faasr_get_file(faasr, "S3_A", "folder", args$input1, "local", "input1.csv")
  faasr_get_file(faasr, "S3_A", "folder", args$input2, "local", "input2.csv")

  print("TESTTESTTEST")
}

F3 <- function(faasr) {
  # print("Hello from inside function Fs")
  args <- faasr_get_user_function_args(faasr)
  # return arguments for this function (F3)
  # expects input1, input2: input file names; output: 
  faasr_get_file(faasr, "S3_A", "folder", args$input1, "local", "input1.csv")

  print("TESTTESTTESTTEST")
  faasr_get_file(faasr, "S3_A", "folder", args$input2, "local", "input2.csv")
  # need to implement output <- input * input
  # if there's a header in each csv file, "header=T"
  input1 <- read.table("local/input1.csv", sep=",", header=T)
  input2 <- read.table("local/input2.csv", sep=",", header=T)
  output <- input2 - input1
  # if there's a header in csv file, "col.names=T"
  write.table(output, file="local/output.csv", sep=",", row.names=F, col.names=T)   
  faasr_put_file(faasr, "S3_A", "local", "output.csv", "folder", args$output)
  faasr_log(faasr, "User function F3 finished")
}	

F4 <- function(faasr) {
  # print("Hello from inside function Fs")
  args <- faasr_get_user_function_args(faasr)
  # return arguments for this function (F4)
  # expects input1, input2: input file names; output: 
  faasr_get_file(faasr, "S3_A", "folder", args$input1, "local", "input1.csv")
  faasr_get_file(faasr, "S3_A", "folder", args$input2, "local", "input2.csv")
  # need to implement output <- input * input
  # if there's a header in each csv file, "header=T"
  input1 <- read.table("local/input1.csv", sep=",", header=T)
  input2 <- read.table("local/input2.csv", sep=",", header=T)
  output <- input2 + input1
  # if there's a header in csv file, "col.names=T"
  write.table(output, file="local/output.csv", sep=",", row.names=F, col.names=T)   
  faasr_put_file(faasr, "S3_A", "local", "output.csv", "folder", args$output)
  faasr_log(faasr, "User function F4 finished")
}	


F6 <- function(faasr) {
# this is function 6
}


F5 <- function(faasr){
  print("Test")
  cat("test")
}
