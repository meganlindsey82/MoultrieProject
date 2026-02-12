# Moultrie Jobs SQL Database

SQL schema and seed data for the 8 Moultrie job postings.

## Tables

- **jobs** — id, title, department, location, created_at
- **job_skills** — skills for experience-based matching
- **job_qualifications** — qualifications for experience-based matching  
- **job_interests** — interests for interest-based matching

## Create the database (SQLite)

From the project root:

```bash
cd database
sqlite3 moultrie_jobs.db < schema.sql
sqlite3 moultrie_jobs.db < seed.sql
```

Or from any directory:

```bash
sqlite3 database/moultrie_jobs.db < database/schema.sql
sqlite3 database/moultrie_jobs.db < database/seed.sql
```

## Jobs included

1. Field Operations Coordinator  
2. Customer Success Representative  
3. Technical Project Lead  
4. HR & Training Specialist  
5. Sales & Outreach Associate  
6. Operations Manager  
7. Junior Developer  
8. Community Engagement Coordinator  
