# Creating Webhook

## Steps for creating webhooks

### GitHub Configuration

1. GitHub repository settings
2. Webhooks
3. Copy jenkins public url with port and enter follow link in webhook text box.
    Example: http://44.203.243.116:8080/github-webhook/

4. Content Type - application/json
5. Which events would you like to trigger this webhook?
    Just the push event.
6. Save and check ✅ sign.

### Jenkins configuration

1. Open pipeline project
2. Configuration
3. Build Trigerrs >> GitHub hook trigger for GITScm polling? << Enable It and save

### Note: Now whenever we push any data to GitHub this build triggers will executed and build process started.
### GitHub is triggering the job.