-- Moultrie jobs seed data (run after schema.sql)

INSERT INTO jobs (id, title, department, location) VALUES
(1, 'Field Operations Coordinator', 'Operations', 'Moultrie, GA'),
(2, 'Customer Success Representative', 'Customer Success', 'Hybrid'),
(3, 'Technical Project Lead', 'Product & Technology', 'Remote'),
(4, 'HR & Training Specialist', 'Human Resources', 'Moultrie, GA'),
(5, 'Sales & Outreach Associate', 'Sales', 'Hybrid'),
(6, 'Operations Manager', 'Operations', 'On-site'),
(7, 'Junior Developer', 'Product & Technology', 'Remote'),
(8, 'Community Engagement Coordinator', 'Community', 'Moultrie, GA');

-- Field Operations Coordinator
INSERT INTO job_skills (job_id, skill) VALUES
(1, 'field operations'), (1, 'logistics'), (1, 'scheduling'), (1, 'coordination'),
(1, 'inventory'), (1, 'documentation'), (1, 'safety compliance');
INSERT INTO job_qualifications (job_id, qualification) VALUES
(1, 'organization'), (1, 'communication'), (1, 'problem solving'), (1, 'experience in operations'),
(1, 'teamwork'), (1, 'detail oriented');
INSERT INTO job_interests (job_id, interest) VALUES
(1, 'organization'), (1, 'hands-on'), (1, 'logistics'), (1, 'safety'),
(1, 'procedures'), (1, 'teamwork'), (1, 'outdoors'), (1, 'structure');

-- Customer Success Representative
INSERT INTO job_skills (job_id, skill) VALUES
(2, 'customer service'), (2, 'customer support'), (2, 'phone'), (2, 'email'),
(2, 'CRM'), (2, 'troubleshooting'), (2, 'onboarding');
INSERT INTO job_qualifications (job_id, qualification) VALUES
(2, 'communication'), (2, 'empathy'), (2, 'problem solving'), (2, 'experience with customers'),
(2, 'listening'), (2, 'patience');
INSERT INTO job_interests (job_id, interest) VALUES
(2, 'helping people'), (2, 'customer focus'), (2, 'listening'), (2, 'problem solving'),
(2, 'teaching'), (2, 'relationship building');

-- Technical Project Lead
INSERT INTO job_skills (job_id, skill) VALUES
(3, 'project management'), (3, 'agile'), (3, 'scrum'), (3, 'technical'),
(3, 'software'), (3, 'development'), (3, 'stakeholder'), (3, 'timeline'), (3, 'budget');
INSERT INTO job_qualifications (job_id, qualification) VALUES
(3, 'leadership'), (3, 'experience leading projects'), (3, 'cross-functional'), (3, 'communication'),
(3, 'organization'), (3, 'problem solving');
INSERT INTO job_interests (job_id, interest) VALUES
(3, 'technology'), (3, 'leading teams'), (3, 'building products'), (3, 'strategy'),
(3, 'collaboration'), (3, 'problem solving');

-- HR & Training Specialist
INSERT INTO job_skills (job_id, skill) VALUES
(4, 'training'), (4, 'onboarding'), (4, 'recruiting'), (4, 'HR'),
(4, 'human resources'), (4, 'policies'), (4, 'orientation'), (4, 'development programs');
INSERT INTO job_qualifications (job_id, qualification) VALUES
(4, 'communication'), (4, 'organization'), (4, 'experience in HR'), (4, 'facilitation'),
(4, 'interpersonal'), (4, 'confidentiality');
INSERT INTO job_interests (job_id, interest) VALUES
(4, 'teaching'), (4, 'helping people grow'), (4, 'organization'), (4, 'people'),
(4, 'development'), (4, 'culture');

-- Sales & Outreach Associate
INSERT INTO job_skills (job_id, skill) VALUES
(5, 'sales'), (5, 'outreach'), (5, 'lead generation'), (5, 'client'),
(5, 'pipeline'), (5, 'negotiation'), (5, 'presentation'), (5, 'relationship');
INSERT INTO job_qualifications (job_id, qualification) VALUES
(5, 'communication'), (5, 'persuasion'), (5, 'goal oriented'), (5, 'experience in sales'),
(5, 'networking'), (5, 'self motivated');
INSERT INTO job_interests (job_id, interest) VALUES
(5, 'meeting people'), (5, 'persuasion'), (5, 'goals'), (5, 'networking'),
(5, 'relationship building'), (5, 'growth');

-- Operations Manager
INSERT INTO job_skills (job_id, skill) VALUES
(6, 'operations'), (6, 'management'), (6, 'process improvement'), (6, 'budget'),
(6, 'planning'), (6, 'team leadership'), (6, 'KPIs'), (6, 'efficiency');
INSERT INTO job_qualifications (job_id, qualification) VALUES
(6, 'leadership'), (6, 'experience managing'), (6, 'analytical'), (6, 'decision making'),
(6, 'organization'), (6, 'supervisory');
INSERT INTO job_interests (job_id, interest) VALUES
(6, 'leading'), (6, 'efficiency'), (6, 'improvement'), (6, 'decision making'),
(6, 'team leadership'), (6, 'results');

-- Junior Developer
INSERT INTO job_skills (job_id, skill) VALUES
(7, 'programming'), (7, 'coding'), (7, 'software development'), (7, 'javascript'),
(7, 'python'), (7, 'web'), (7, 'API'), (7, 'git'), (7, 'debugging');
INSERT INTO job_qualifications (job_id, qualification) VALUES
(7, 'problem solving'), (7, 'projects'), (7, 'computer science'), (7, 'technical'),
(7, 'learning'), (7, 'collaboration'), (7, 'code');
INSERT INTO job_interests (job_id, interest) VALUES
(7, 'technology'), (7, 'building things'), (7, 'problem solving'), (7, 'learning'),
(7, 'coding'), (7, 'projects'), (7, 'creativity');

-- Community Engagement Coordinator
INSERT INTO job_skills (job_id, skill) VALUES
(8, 'community'), (8, 'engagement'), (8, 'outreach'), (8, 'events'),
(8, 'volunteer'), (8, 'partnerships'), (8, 'social'), (8, 'programs');
INSERT INTO job_qualifications (job_id, qualification) VALUES
(8, 'communication'), (8, 'organization'), (8, 'volunteer experience'), (8, 'leadership'),
(8, 'involvement'), (8, 'relationship building');
INSERT INTO job_interests (job_id, interest) VALUES
(8, 'community'), (8, 'volunteer'), (8, 'events'), (8, 'helping others'),
(8, 'partnerships'), (8, 'social impact'), (8, 'involvement');
