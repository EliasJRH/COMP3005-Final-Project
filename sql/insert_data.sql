/*insert into ROUTINE (routine_type, equipment_needed, skill_level, routine_name, estimated_time, made_by) 
values ("", "", "", "", 0, 0);
*/

insert into USER values("JimmyTheGreat", "jimmy@jimmyjam.com", "23/2/2003", "GREATPASS");
insert into USER values("bILLY12", "b1gb0b@Bomb.com", "12/3/2002", "12345678910");
insert into USER values("Lienly", "CortezKBaker@armyspy.com", "5/2/1998", "tu4JeeVi7gu");
insert into USER values("Wervelf", "StephenSWalton@teleworm.us", "22/12/1986", "vieQui3quai");
insert into USER values("Hatintibleat", "FlorenceJPerkins@teleworm.us", "23/9/2002", "ab0NohMahb");
insert into USER values("builtMAN17", "bigM@n@wrktot.com", "19/7/2000", "wkrtoutI1l2f3");

insert into EXERCISE values("Underhand Dumbbell Raise", "Dumbbells", "Shoulders", "uh_dumbbell_raise.jpg");
insert into EXERCISE(exercise_name, targeted_muscle_groups) values("Wide Gripped Pushup", "Chest, Shoulders, Triceps");
insert into EXERCISE(exercise_name, exercise_equipment, targeted_muscle_groups) values("Incline Pushup", "None/Bench", "Chest, Shoulders, Triceps");
insert into EXERCISE values("Bench Press", "Bench, Barbell bar", "Shoulders, Chest, Triceps", "bench_press.webp");
insert into EXERCISE values("Barbell Row", "Barbell bar", "Upper Back, Lats, Traps, Middle Back, Biceps","barbell_row.webp");
insert into EXERCISE values("Incline Dumbbell Fly", "Dumbbells, Bench", "Shoulders, Chest, Biceps", "incline_dumbell_fly.webp");
insert into EXERCISE values("Lateral Pull-Down", "Lateral pulldown machine", "Shoulders, Lats, Upper Back, Middle Back, Traps, Biceps", "lateral_pull_down.webp");
insert into EXERCISE values("One-arm Cable Press", "Cable machine", "Chest, Shoulders, Triceps", "one-arm-cable-press.webp");
insert into EXERCISE values("Dumbbell Pull-Over", "Bench, Dumbbells", "Chest, Lats", "dumbell-pull-over.webp");
insert into EXERCISE values("Barbell Squat", "Barbell bar", "Quads, Glutes, Abs", "barbell_squat.webp");
insert into EXERCISE values("Romanian Deadlift", "Barbell bar", "hamstrings, Glutes, Lower Back", "romanian_deadlift.webp");
insert into EXERCISE values("Leg Extension", "Leg extension machine", "Quads", "leg_extension.webp");
insert into EXERCISE values("Hamstring Curl", "Hamstring curl machine", "Hamstrings", "hamstring_curl.webp");
insert into EXERCISE values("Crunch", "Yoga mat", "Abs, Obliques, Hip Flexors", "crunch.webp");
insert into EXERCISE values("Plank", "Yoga mat", "Abs, Obliques", "plank.webp");
insert into EXERCISE values("Underhand Lateral Pull-Down", "Lateral pulldown machine", "Shoulders, Lats, Biceps, Middle Back, Upper Back, Traps", "underhand_lat_pulldown.webp");
insert into EXERCISE values("Triceps Dip", "Dip bar", "Shoulders, Chest, Triceps, Traps", "triceps_dip.webp");
insert into EXERCISE values("Dumbbell Curl", "Dumbbells", "Biceps", "dumbbell_curl.webp");
insert into EXERCISE values("Standing Tricep Extension", "Dumbbells", "Tricep", "standing_tricep_extension.webp");
insert into EXERCISE values("Cable Curl", "Cable machine", "Biceps", "cable_bicep_curl.webp");
insert into EXERCISE values("Cable Tricep Press-Down", "Cable machine", "Triceps", "cable_tricep_press_down.webp");
insert into EXERCISE values("Overhead Press", "Barbell Bar", "Shoulders, Triceps, Traps", "overhead_press.webp");
insert into EXERCISE values("Chin Up", "Suspended Horizontal Bar", "Lats, Upper Back, Middle Back, Traps, Biceps", "chin_up.webp");
insert into EXERCISE values("EZ-Bar Upright Row", "EZ-bar", "Shoulders, Traps", "ez-bar-upright-row.webp");
insert into EXERCISE values("Incline Biceps Curl", "Bench, Dumbbells", "Biceps", "incline_bicep_curl.webp");
insert into EXERCISE values("Lateral Raise", "Dumbbells", "Shoulders", "dumbbell_lat_raise.webp");

insert into ROUTINE (routine_name, equipment_needed, skill_level, routine_type, estimated_time, made_by) 
values ("Quick Chest Pump", "Dumbbells, Bench", "Novice", "Chest", 30, "builtMAN17");
insert into ROUTINE (routine_name, equipment_needed, skill_level, routine_type, estimated_time, made_by) 
values ("Weekly Chest Killer", "Barbell, Bench, Dumbbells, Lat pulldown machine, Cable press machine", "Intermediate", "Chest and Back", 60, "Wervelf");
insert into ROUTINE (routine_name, equipment_needed, skill_level, routine_type, estimated_time, made_by) 
values ("Weekly Leg Killer", "Barbell, Leg extension machine, Hamstring curl machine, Yoga mat", "Intermediate", "Legs and Abs", 60, "Wervelf");
insert into ROUTINE (routine_name, equipment_needed, skill_level, routine_type, estimated_time, made_by) 
values ("Weekly Arms Killer", "Lateral pulldown machine, Dip bar, Dumbbells, Cable machine", "Intermediate", "Biceps and Triceps", 60, "Wervelf");
insert into ROUTINE (routine_name, equipment_needed, skill_level, routine_type, estimated_time, made_by) 
values ("Weekly Shoulder Killer", "Barbell Bar, Suspended Horizontal Bar, EZ-bar, Bench, Dumbbells, Cable machine", "Intermediate", "Shoulders and Arms", 60, "Wervelf");

insert into ROUTINE_EXERCISE_LIST values(1, 1, "Underhand Dumbbell Raise", 2, "Rep", 12);
insert into ROUTINE_EXERCISE_LIST values(1, 2, "Wide Gripped Pushup", 4, "Rep", 12);
insert into ROUTINE_EXERCISE_LIST values(1, 3, "Incline Pushup", 4, "Rep", 12);

insert into ROUTINE_EXERCISE_LIST values(2, 1, "Bench Press", 4, "Rep", 10);
insert into ROUTINE_EXERCISE_LIST values(2, 2, "Barbell Row", 4, "Rep", 10);
insert into ROUTINE_EXERCISE_LIST values(2, 3, "Incline Dumbbell Fly", 3, "Rep", 10);
insert into ROUTINE_EXERCISE_LIST values(2, 4, "Lateral Pull-Down", 3, "Rep", 10);
insert into ROUTINE_EXERCISE_LIST values(2, 5, "One-arm Cable Press", 3, "Rep", 10);
insert into ROUTINE_EXERCISE_LIST values(2, 6, "Dumbbell Pull-Over", 3, "Rep", 10);

insert into ROUTINE_EXERCISE_LIST values(3, 1, "Barbell Squat", 4, "Rep", 10);
insert into ROUTINE_EXERCISE_LIST values(3, 2, "Romanian Deadlift", 3, "Rep", 10);
insert into ROUTINE_EXERCISE_LIST values(3, 3, "Leg Extension", 3, "Rep", 10);
insert into ROUTINE_EXERCISE_LIST values(3, 4, "Hamstring Curl", 3, "Rep", 10);
insert into ROUTINE_EXERCISE_LIST values(3, 5, "Crunch", 3, "Rep", 10);
insert into ROUTINE_EXERCISE_LIST values(3, 6, "Plank", 3, "Rep", 10);

insert into ROUTINE_EXERCISE_LIST values(4, 1, "Underhand Lateral Pull-Down", 4, "Rep", 10);
insert into ROUTINE_EXERCISE_LIST values(4, 2, "Triceps Dip", 4, "Rep", 10);
insert into ROUTINE_EXERCISE_LIST values(4, 3, "Dumbbell Curl", 3, "Rep", 10);
insert into ROUTINE_EXERCISE_LIST values(4, 4, "Standing Tricep Extension", 3, "Rep", 10);
insert into ROUTINE_EXERCISE_LIST values(4, 5, "Cable Curl", 3, "Rep", 10);
insert into ROUTINE_EXERCISE_LIST values(4, 6, "Cable Tricep Press-Down", 3, "Rep", 10);

insert into ROUTINE_EXERCISE_LIST values(5, 1, "Overhead Press", 4, "Rep", 10);
insert into ROUTINE_EXERCISE_LIST values(5, 2, "Chin Up", 4, "Rep", 10);
insert into ROUTINE_EXERCISE_LIST values(5, 3, "EZ-Bar Upright Row", 3, "Rep", 10);
insert into ROUTINE_EXERCISE_LIST values(5, 4, "Incline Biceps Curl", 3, "Rep", 10);
insert into ROUTINE_EXERCISE_LIST values(5, 5, "Lateral Raise", 3, "Rep", 10);
insert into ROUTINE_EXERCISE_LIST values(5, 6, "Cable Tricep Press-Down", 3, "Rep", 10);

insert into FRIENDS values ("Wervelf", "Hatintibleat");
insert into FRIENDS values ("Hatintibleat", "Wervelf");
insert into FRIENDS values ("Hatintibleat", "builtMAN17");
insert into FRIENDS values ("builtMAN17", "Hatintibleat");
insert into FRIENDS values ("bILLY12", "Wervelf");
insert into FRIENDS values ("Wervelf", "bILLY12");
insert into FRIENDS values ("JimmyTheGreat", "bILLY12");
insert into FRIENDS values ("bILLY12", "JimmyTheGreat");
insert into FRIENDS values ("Lienly", "Wervelf");
insert into FRIENDS values ("Wervelf", "Lienly");
insert into FRIENDS values ("bILLY12", "builtMAN17");
insert into FRIENDS values ("builtMAN17", "bILLY12");

insert into SAVED values ("Hatintibleat", 3);
insert into SAVED values ("builtMAN17", 1);
insert into SAVED values ("Hatintibleat", 2);
insert into SAVED values ("builtMAN17", 2);
insert into SAVED values ("bILLY12", 1);
insert into SAVED values ("Wervelf", 2);
insert into SAVED values ("builtMAN17", 3);




