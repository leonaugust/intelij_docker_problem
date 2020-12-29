package com.example.intelij_docker_problem;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class IntelijDockerProblemApplication {

  public static void main(String[] args) {
    SpringApplication.run(IntelijDockerProblemApplication.class, args);
  }

  @GetMapping("/")
  public String testEndpoint() {
    return "test";
  }

}
