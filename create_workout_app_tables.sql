drop table if exists USER;
drop table if exists ROUTINE;
drop table if exists EXERCISE;
drop table if exists FRIENDS;
drop table if exists SAVED;
drop table if exists ROUTINE_EXERCISE_LIST;

CREATE TABLE USER (
	username text primary key NOT NULL, -- username in app
	email text not null,
	date_of_birth text, -- optional date of birth
	password text NOT NULL -- user password
);

create table ROUTINE(
	routine_id integer primary key not null, -- routine id number
	routine_type text not null, -- routine type (ex: chest, legs, cardio, yoga, etc.)
	equipment_needed text, -- equipment needed for routine (ex: bench, dumbells, bike, yoga matt etc.)
	skill_level text, -- skill level of routine (ex: beginner, novice, intermediate etc.)
	routine_name text not null, -- name of routine
	estimated_time integer, -- estimated time in minutes of how long the routine should take to complete
	made_by integer not null,
	foreign key(made_by) references USER(username)
);

create table EXERCISE(
	exercise_name text primary key not null,
	exericse_equipment text,
	targeted_muslce_group text,
	picture_file_name text
);

create table FRIENDS(
	friends_user_one integer not null,
	friends_user_two integer not null,
	foreign key (friends_user_one) references USER(username),
	foreign key (friends_user_two) references USER(username),
	primary key (friends_user_one, friends_user_two)
);

create table SAVED(
	saved_user_id integer not null,
	saved_routine_id integer not null,
	foreign key (saved_user_id) references USER(username),
	foreign key (saved_routine_id) references ROUTINE(routine_id),
	primary key (saved_user_id, saved_routine_id)
);

create table ROUTINE_EXERCISE_LIST(
	routine_id integer not null,
	position_no integer not null,
	exercise_id integer not null,
	reps_or_time_based text not null, -- "Reps or "Time"
	reps_or_time integer not null, -- If "reps", then a numerical value representing number of repitions
	-- if "time" an integer representing number of minutes 
	foreign key (routine_id) references ROUTINE(routine_id),
	foreign key (exercise_id) references EXERCISE(exercise_id),
	primary key (routine_id, position_no)
);