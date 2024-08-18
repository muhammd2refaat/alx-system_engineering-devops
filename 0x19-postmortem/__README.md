# Postmortem: The Great Memory Leak of August 2024

## Issue Summary

- **Duration of the outage:** August 15, 2024, 14:00 - 15:30 UTC (1 hour 30 minutes)
- **Impact:** Significant slowdown in web application service, affecting 60% of users with a 25% increase in bounce rates.
- **Root Cause:** Memory leak in the session management module, leading to excessive memory consumption.

## Timeline

- **14:00 UTC:** Monitoring alert triggered due to slow web server response times.
- **14:05 UTC:** DevOps team notified.
- **14:10 UTC:** Initial investigation focused on the database layer.
- **14:20 UTC:** Database queries optimized, issue persisted.
- **14:30 UTC:** Shifted focus to the application server.
- **14:45 UTC:** Escalated to software engineering team.
- **15:00 UTC:** Memory leak in session management identified.
- **15:15 UTC:** Temporary fix deployed, web server restarted.
- **15:30 UTC:** Service fully restored.

## Root Cause and Resolution

- **Root Cause:** Memory leak in session management due to unclosed sessions.
- **Resolution:** Manual session cleanup and web server restart. A patch was developed and deployed.

## Corrective and Preventative Measures

- **Improvements/Fixes:**
  - Comprehensive review of the session management module.
  - Enhanced memory usage monitoring.
  - Improved logging and alerting for session management.

- **Task List:**
  - [ ] Patch session management module.
  - [ ] Add memory monitoring.
  - [ ] Implement scripts for regular session cleanup.
  - [ ] Review and optimize memory-intensive operations.
  - [ ] Conduct post-deployment review.

## Bonus: A Diagram to Visualize the Chaos

![Memory Leak Debugging Process](https://github.com/muhammd2refaat/alx-system_engineering-devops/blob/master/0x19-postmortem/path_to_diagram_image)

