# Preparation Notes — QA in DevOps

Alan Richardson's published pre-event discussion prompts for Test Focus Groups, London, 21 March 2017. These notes record preparation; they do not establish which topics were covered in each session. The original wording is retained from the [conference page](https://www.eviltester.com/conference/testfocusgroups2017_conference/).

Prior to the event, I made some notes to prompt discussion and my memory if necessary. I include them below for your perusal and delectation.

- What is Agile?
    - merge testing, programming, designing, etc. into "Development"
- What is DevOps?
    - merge "Development" and "Ops"
- How is DevOps different from Agile?
    - releases, infrastructure as code, monitoring

**Testing in Devops**

- Does DevOps change the test process?
- Does Testing Fit into DevOps?
- Do Testers Fit into Devops?
- Do Test Managers Fit into Devops?

**What Practices Support Devops**

- Continuous Integration
- Continous Delivery
- Automated Application Execution and Assertions - beyond Unit testing


**What happens when you 'do' DevOps?**

- Architecture changes:
   - smaller systems - micro-services, web services
   - health checks
   - APIs
   - easier to automate
   - easier to 'test' in smaller chunks
   - loose coupled

**Possible Topics**

- What is DevOps?
- Experiences of DevOps
- Testing in Devops
- Role Changes
- Roll back, path forward - Idempotently
- Configuration as Code - jenkins, Chef, Puppet
- Containers - share os, isolate memory, I/O etc.
- Infrastructure as code - Containers Technology - vagrant, docker, Kubernetes,
- Monitoring - Graphite, Kibana (Elastic Search. Logstash)
- "Shift Left"
- Test Data - discovery, masking, creation, 'golden deploy'
- "serverless" - always in production environments
- "Anti-Fragile", Reliable - chaos monkey
- Assurance - build the right thing
- APIs
- Cloud - risks, benefits, issues
- Leverage Platform, Infrastructure as a service
- 3rd part applications impact on devops
- Lean - Make work visible, Limit WIP, Reduce Batch size, Reduce Handoffs, Identify & Remove constrains, eliminate waste
- Fast Feedback - How
- Learning Culture

- Poor adoption
    - Devops project
    - ownership
    - silos
    - agile didn't work - try devops
    - replace agile with devops
    - remove ops

Performance Testing as Code - e.g. Gatling, Ruby JMeter

**Where does it fall down?**

- Risk Analysis
    - no 'tester' to consider risk and explore for risk
    - overconfident safety net because of the 'amount' of automated execution - #tests, length of test run, code coverage
- focus on 'speed'
    - speed might not be more 'important' than 'assurance'
- backups
- roll backs
- checks during automated deployment
- monitoring not monitored

**Experiences**

- Finance Market Org
    - move to 'devops' after Agile
    - sub team within dev team responsible for Ops support - dev and ops
    - pragmatic rather than 'idealised'
- Payments
    - multiple teams - different approaches
    - teams support app in prod, ops support environments
    - smaller teams with smaller systems have more control
- Others
    - Small outsourced dev team - the only team (ops + dev) but none of the controls
    - "on call"
