# Creating poll-scm

## Steps for creating poll-scm

### Jenkins configuration

1. Open pipeline project
2. Configuration
3. Build Trigerrs >> Poll SCM 
4. Enter - * * * * *
5. Five start means - MINUTE HOUR DOM MONTH DOW

### Note: Jenkins will check every minute for repository change and when change found it will start build.