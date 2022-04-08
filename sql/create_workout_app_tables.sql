drop table if exists USER;
drop table if exists ROUTINE;
drop table if exists EXERCISE;
drop table if exists FRIENDS;
drop table if exists SAVED;
drop table if exists ROUTINE_EXERCISE_LIST;

CREATE TABLE USER (
	username text primary key NOT NULL, -- username in app
	email text not null, -- email required
	date_of_birth text, -- optional date of birth
	password text NOT NULL -- user password
);

create table ROUTINE(
	routine_id integer primary key not null, -- routine id number
	routine_name text not null, -- name of routine
	routine_type text not null, -- routine type (ex: chest, legs, cardio, yoga, etc.)
	equipment_needed text, -- equipment needed for routine (ex: bench, dumbells, bike, yoga matt etc.)
	skill_level text, -- skill level of routine (ex: beginner, novice, intermediate etc.)
	estimated_time integer, -- estimated time in minutes of how long the routine should take to complete
	made_by text not null,
	foreign key(made_by) references USER(username)
);

create table EXERCISE(
	exercise_name text primary key not null,
	exercise_equipment text default "None",
	targeted_muscle_groups text,
	picture_file_name text
);

create table FRIENDS(
	friends_user_one text not null,
	friends_user_two text not null,
	foreign key (friends_user_one) references USER(username),
	foreign key (friends_user_two) references USER(username),
	primary key (friends_user_one, friends_user_two)
);

create table SAVED(
	saved_username text not null,
	saved_routine_id integer not null,
	foreign key (saved_username) references USER(username),
	foreign key (saved_routine_id) references ROUTINE(routine_id),
	primary key (saved_username, saved_routine_id)
);

create table ROUTINE_EXERCISE_LIST(
	routine_id integer not null,
	position_no integer not null,
	exercise_name text not null,
	sets integer not null,
	reps_or_time_based text not null, -- "Reps or "Time"
	reps_or_time integer not null, -- If "reps", then a numerical value representing number of repitions
	-- if "time" is an integer representing number of minutes 
	foreign key (routine_id) references ROUTINE(routine_id),
	foreign key (exercise_name) references EXERCISE(exercise_name),
	primary key (routine_id, position_no)
);