# Maven Commands:
## Make Sure to stay in pom.xml file's directory for execute these commands.
## All dependency stored in /home/user/.m2
### Example: /home/ubuntu/.m2
### For remove dependency use - rm -rf /home/ubuntu/.m2/repository/*

1. **`mvn validate`**
   - *Purpose:* Validates that the project is correct and all necessary information is available.
   
   ```bash
   mvn validate
     ```

2. **`mvn test`**
   - *Purpose:* Runs the tests of the project. Download dependencies and test run. Reports available on target folder.
   
   ```bash
   mvn test
     ```

3. **`mvn clean install`**
   - *Purpose:* Cleans the project, compiles the code, and installs artifacts into the local repository.
   
   ```bash
   mvn clean install
     ```

4. **`mvn clean`**
   - *Purpose:* Cleans the target directory, removing compiled classes and other generated files.

   - ```bash
     mvn clean
     ```

5. **`mvn compile`**
   - *Purpose:* Compiles the source code of the project.

    ```bash
     mvn compile
     ```

6. **`mvn test`**
   - *Purpose:* Runs the tests of the project.

    ```bash
     mvn test
     ```

7. **`mvn package`**
   - *Purpose:* Packages the compiled code into a distributable format (e.g., JAR, WAR).

    ```bash
     mvn package
     ```

8. **`mvn install`**
   - *Purpose:* Installs the project's artifacts (e.g., JAR) into the local repository.

    ```bash
     mvn install
     ```

9. **`mvn deploy`**
   - *Purpose:* Deploys the project's artifacts to a remote repository.

    ```bash
     mvn deploy
     ```

10. **`mvn clean install`**
   - *Purpose:* Cleans the project, compiles the code, and installs artifacts into the local repository.

    ```bash
     mvn clean install
     ```

11. **`mvn clean package`**
   - *Purpose:* Cleans the project and packages the compiled code.

    ```bash
     mvn clean package
     ```

12. **`mvn dependency:tree`**
   - *Purpose:* Displays the project's dependency tree.

    ```bash
     mvn dependency:tree
     ```

13. **`mvn help:effective-pom`**
    - *Purpose:* Displays the effective POM (Project Object Model) after inheritance and property substitution.

     ```bash
      mvn help:effective-pom
      ```

14. **`mvn spring-boot:run`**
    - *Purpose:* Starts the Spring Boot application.

     ```bash
      mvn spring-boot:run
      ```