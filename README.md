# Event/Product Syndicator

This is an API that has two endpoints, which allow an admin user to log in via the ADMIN PANEL at the link below, and create new products/events that the API later syndicates to external event sites. 

ADMIN PANEL REPO: https://github.com/aschittone/admin-panel

This API uses a rake task, in addition to the ruby gem, Whenever, in order to schedule syndication every hour, for new products entered into the database. Please see config/schedule.rb for the scheduled rake task. This gem assists with writing and deploying cron jobs.

* Assumptions:
 * admin user knows the correct data to add for each event
 * admin users are already set up in the database, they cannot sign up for themselves
 * additional API calls can be made from the worker file, syndication.rb, as needed

 * Technologies used:
	* Ruby on Rails (API only)
	* PostgreSQL
	* JWT Token (for admin authentication)

