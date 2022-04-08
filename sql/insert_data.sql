/*insert into ROUTINE (routine_type, equipment_needed, skill_level, routine_name, estimated_time, made_by) 
values ("", "", "", "", 0, 0);
*/

insert into USER values("JimmyTheGreat", "jimmy@jimmyjam.com", "23/2/2003", "GREATPASS");
insert into USER values("bILLY12", "b1gb0b@Bomb.com", "12/3/2002", "12345678910");
insert into USER values("Lienly", "CortezKBaker@armyspy.com", "5/2/1998", "tu4JeeVi7gu");
insert into USER values("Wervelf", "StephenSWalton@teleworm.us", "22/12/1986", "vieQui3quai");
insert into USER values("Hatintibleat", "FlorenceJPerkins@teleworm.us", "23/9/2002", "ab0NohMahb");
insert into USER values("builtMAN17", "bigM@n@wrktot.com", "19/7/2000", "wkrtoutI1l2f3");

insert into EXERCISE(exercise_name, exercise_equipment, targeted_muscle_groups, picture_file_name) values("Dumbell Raise", "Dumbbell", "Shoulders", "uh_dumbell_raise.jpg");
insert into EXERCISE(exercise_name, targeted_muscle_groups) values("Wide Gripped Pushup", "Chest, Shoulders, Triceps");
insert into EXERCISE(exercise_name, exercise_equipment, targeted_muscle_groups) values("Incline Pushup", "Bench", "Chest, Shoulders, Triceps");

insert into ROUTINE (routine_name, equipment_needed, skill_level, routine_type, estimated_time, made_by) 
values ("Quick Chest Pump", "Dumbbell, Bench", "Novice", "Chest", 30, "builtMAN17");

insert into ROUTINE_EXERCISE_LIST values(1, 1, "Underhand Dumbell Raise", 2, "Rep", 12);
insert into ROUTINE_EXERCISE_LIST values(1, 2, "Wide Gripped Pushup", 4, "Rep", 12);
insert into ROUTINE_EXERCISE_LIST values(1, 3, "Incline Pushup", 4, "Rep", 12);