---
name: Deployment Preparation
about: Create an issue with this when you want to deploy a service on dev/stage environments 
title: 'Deployment preparation : [Service Name]'
labels: ''
assignees: ''
---

# Deployment Preparation
<!--
README FIRST

1. Title this issue with `Deployment preparation : [Service Name]`.
2. Assign this issue to the SRE, i.e. `@ks/site-reliability`
3. Fill in all relevant information required for deployment preparation.
-->

## Audit

### Application audit

The Development engineer must review the code and check off the following checklist,

- [ ] Application does not contain any secrets, private keys, passwords, usernames, database hostname, etc. as a part of the code
- [ ] All NPM packages are updated to the latest version by running `npm update`
- [ ] Reserve a next port number available in the list available 
### API profiling results

(This content will be added later by `@ks/site-reliability`)

### Monitoring tool integration

- [ ] Setup Sentry monitoring for the service

**Instructions**
Sentry’s GitHub integration helps you track and resolve bugs faster by using data from your GitHub commits. Additionally, you can streamline your triaging process by creating a GitLab issue directly from Sentry. Follow [documentation](https://docs.sentry.io/product/integrations/github/)


## Requirements

Add a comment by filling up all the following details for the SRE team to create a cloudformation template file for the service.

```
### Application Requirements

#### Resource requirements

Add or update following values as required,

| Item | Value |
| :--- | :---- |
| CPU  | 128 ?  |
| Memory | 128 ? |

#### Environment requirements

Add or update following values as required,

| Environment Key | Dev Value | Stage Value |
| :--- | :--- | :--- |
| ENVIRONMENT | ks-dev | ks-stage |
| MICROSERVICE_NAME |  |  |
| MICROSERVICE_TYPE |  |  |
| APP_PORT |  |  |
| _key_ | ? | ? |

#### Events that this service needs to consumes

Add a list of events that the service must subscribe to from the [list of events](https://github.com/ks/lib-event-publisher/blob/master/src/EventTypes.js). If the service does not need to subscribe to any event, remove this section while posting a comment.

1. _event name_
2. _event name_
...

```

## Deployment

All tasks to be performed by the SRE team.

### Update AWS API gateway

Repeat following steps for dev as well as stage environment,

- [ ] Create a resource with service name on API gateway
- [ ] Enable CORS support with `*` for headers and origin
- [ ] Deploy APIs to `v1` stage
- [ ] Update cloudformation script for API Gateway template by exporting API template from `v1` stage by using `Export as Swagger + API Gateway Extensions` method for JSON

### Authorization service setup

- [ ] Update authorization service database with the service details for correct user authorization for user-accessible services

### Database setup

- [ ] Setup database as required by the service, contact service developer for more information in this issue

### Cloudformation deploy

- [ ] Deploy service using cloudformation script, make sure the service reaches healthy state and service is reachable
