-- Patient
INSERT INTO patient(fname, lname, birthdate, sex)
VALUES ('John', 'Smith', '19460815', 'M');

INSERT INTO patient(fname, lname, birthdate, sex)
VALUES ('Mariah', 'Carey', '19500915', 'F');

INSERT INTO patient(fname, lname, birthdate, sex)
VALUES ('James', 'Perez', '19481004', 'M');

-- Record
INSERT INTO record(bloodtype, idPatient)
VALUES ('O+', 1);

INSERT INTO record(bloodtype, idPatient)
VALUES ('AB-', 2);

INSERT INTO record(bloodtype, idPatient)
VALUES ('A-', 3);

-- Doctor
INSERT INTO doctor(name, sex, specialty, cedulaProf)
VALUES ('Oscar de la Renta', 'M', 'Geriatra', '123456789');

INSERT INTO doctor(name, sex, specialty, cedulaProf)
VALUES ('Phil Collins', 'M', 'Cardiologo', '1111111111');

INSERT INTO doctor(name, sex, specialty, cedulaProf)
VALUES ('Mariano Chavez', 'M', 'Geriatra', '987654321');

-- Allergies
INSERT INTO allergies(idRecord, allergy)
VALUES (1, 'Pollen');

INSERT INTO allergies(idRecord, allergy)
VALUES (1, 'Nueces');

INSERT INTO allergies(idRecord, allergy)
VALUES (2, 'Abejas');

INSERT INTO allergies(idRecord, allergy)
VALUES (2, 'Polvo');

INSERT INTO allergies(idRecord, allergy)
VALUES (2, 'Penicilina');

INSERT INTO allergies(idRecord, allergy)
VALUES (3, 'Latex');

INSERT INTO allergies(idRecord, allergy)
VALUES (3, 'Nueces');

-- Prescription
INSERT INTO prescription(datePresc)
VALUES ('20160709');

INSERT INTO prescription(datePresc)
VALUES ('20161004');

INSERT INTO prescription(datePresc)
VALUES ('20161215');

INSERT INTO prescription(datePresc)
VALUES ('20170111');

INSERT INTO prescription(datePresc)
VALUES ('20170202');

INSERT INTO prescription(datePresc)
VALUES ('20170211');

INSERT INTO prescription(datePresc)
VALUES ('20170218');

INSERT INTO prescription(datePresc)
VALUES ('20170328');

-- DoctorVisit
INSERT INTO doctorVisit(dateVisit, temp, height, bloodPressureS, bloodPressureD, comments, idRecord, idDoctor, idPrescription)
VALUES ('20160612', 36.4, 1.68, 120, 78, 'Presion normal', 1, 1, NULL);

INSERT INTO doctorVisit(dateVisit, temp, height, bloodPressureS, bloodPressureD, comments, idRecord, idDoctor, idPrescription)
VALUES ('20160629', 36.5, 1.72, 115, 75, 'La presion esta bien', 2, 3, NULL);

INSERT INTO doctorVisit(dateVisit, temp, height, bloodPressureS, bloodPressureD, comments, idRecord, idDoctor, idPrescription)
VALUES ('20160709', 36.3, 1.80, 93, 58, 'Presion baja, hipotension, ir a estudios', 3, 3, 1);   

INSERT INTO doctorVisit(dateVisit, temp, height, bloodPressureS, bloodPressureD, comments, idRecord, idDoctor, idPrescription)
VALUES ('20161004', 36.8, 1.73, 125, 82, 'Presion un poco alta (Prehipertension)', 2, 2, 2);

INSERT INTO doctorVisit(dateVisit, temp, height, bloodPressureS, bloodPressureD, comments, idRecord, idDoctor, idPrescription)
VALUES ('20161215', 37.2, 1.67, 117, 79, 'Signos vitales en orden, infeccion bacteriana, se le receta un antibiotico', 1, 1, 3);

INSERT INTO doctorVisit(dateVisit, temp, height, bloodPressureS, bloodPressureD, comments, idRecord, idDoctor, idPrescription)
VALUES ('20170111', 36.9, 1.81, 121, 80, 'Muy bien todo', 3, 3, 4);

INSERT INTO doctorVisit(dateVisit, temp, height, bloodPressureS, bloodPressureD, comments, idRecord, idDoctor, idPrescription)
VALUES ('20170113', 37.1, 1.67, 121, 77, 'Presion normal', 1, 3, NULL);

INSERT INTO doctorVisit(dateVisit, temp, height, bloodPressureS, bloodPressureD, comments, idRecord, idDoctor, idPrescription)
VALUES ('20170125', 36.4, 1.72, 128, 83, 'Presion alta', 2, 2, NULL);

INSERT INTO doctorVisit(dateVisit, temp, height, bloodPressureS, bloodPressureD, comments, idRecord, idDoctor, idPrescription)
VALUES ('20170202', 36.4, 1.80, 118, 66, 'Presion normal', 3, 1, 5);

INSERT INTO doctorVisit(dateVisit, temp, height, bloodPressureS, bloodPressureD, comments, idRecord, idDoctor, idPrescription)
VALUES ('20170211', 36.5, 1.73, 120, 78, 'Presion normal', 2, 1, 6);

INSERT INTO doctorVisit(dateVisit, temp, height, bloodPressureS, bloodPressureD, comments, idRecord, idDoctor, idPrescription)
VALUES ('20170218', 36.3, 1.67, 126, 71, 'Presion normal', 1, 2, 7);

INSERT INTO doctorVisit(dateVisit, temp, height, bloodPressureS, bloodPressureD, comments, idRecord, idDoctor, idPrescription)
VALUES ('20170303', 36.8, 1.80, 95, 60, 'Presion baja', 3, 3, NULL);

INSERT INTO doctorVisit(dateVisit, temp, height, bloodPressureS, bloodPressureD, comments, idRecord, idDoctor, idPrescription)
VALUES ('20170305', 37.2, 1.67, 120, 78, 'Presion normal', 1, 2, NULL);

INSERT INTO doctorVisit(dateVisit, temp, height, bloodPressureS, bloodPressureD, comments, idRecord, idDoctor, idPrescription)
VALUES ('20170323', 36.9, 1.71, 125, 80, 'Presion alta', 2, 3, NULL);

INSERT INTO doctorVisit(dateVisit, temp, height, bloodPressureS, bloodPressureD, comments, idRecord, idDoctor, idPrescription)
VALUES ('20170328', 34.5, 1.80, 119, 79, 'Signos vitales en orden, infeccion bacteriana se le receta un antibiotico', 3, 1, 8);

-- DrugCatalog
INSERT INTO drugCatalog(genericName, sideEffects, comments)
VALUES ('Meperdina', 'Nauseas', 'En caso de nauseas consulte a su medico');

INSERT INTO drugCatalog(genericName, sideEffects, comments)
VALUES ('Cimetidina', 'Irritacion en la piel', 'No tomar por mas de 5 dias');

INSERT INTO drugCatalog(genericName, sideEffects, comments)
VALUES ('Alprazolam', 'Mareos', 'No combinar con alcohol');

INSERT INTO drugCatalog(genericName, sideEffects, comments)
VALUES ('Propoxifeno', 'Constipacion', 'No combinar con Cimetidina');

INSERT INTO drugCatalog(genericName, sideEffects, comments)
VALUES ('Amoxicilina', 'Hipersensibilidad', 'No manejar maquinaria pesada');

INSERT INTO drugCatalog(genericName, sideEffects, comments)
VALUES ('Hidrocodona', 'Indigestion', 'Tomar muchos liquidos');

-- PrescriptionDetails
INSERT INTO prescriptionDetails(idPrescription, idDrugCatalog, startdate, enddate, instructions)
VALUES (1, 1, '20160709', '20160725', 'Una capsula de 15 mg cada 12 horas');

INSERT INTO prescriptionDetails(idPrescription, idDrugCatalog, startdate, enddate, instructions)
VALUES (1, 2, '20160709', '20160717', 'Una capsula cada 12 horas');

INSERT INTO prescriptionDetails(idPrescription, idDrugCatalog, startdate, enddate, instructions)
VALUES (2, 3, '20161004', '20161009', '0,25 mg cada 6 horas');

INSERT INTO prescriptionDetails(idPrescription, idDrugCatalog, startdate, enddate, instructions)
VALUES (2, 4, '20161004', '20161006', 'Capsula de 65 mg en caso de dolor');

INSERT INTO prescriptionDetails(idPrescription, idDrugCatalog, startdate, enddate, instructions)
VALUES (3, 5, '20161215', '20161230', 'Una capsula cada 8 horas.');

INSERT INTO prescriptionDetails(idPrescription, idDrugCatalog, startdate, enddate, instructions)
VALUES (4, 6, '20170111', '20170118', '10 mg cada 6 horas');

INSERT INTO prescriptionDetails(idPrescription, idDrugCatalog, startdate, enddate, instructions)
VALUES (5, 1, '20170202', '20170207', 'Una capsula de 15 mg cada 12 horas');

INSERT INTO prescriptionDetails(idPrescription, idDrugCatalog, startdate, enddate, instructions)
VALUES (6, 2, '20170211', '20170213', 'Una capsula cada 12 horas');

INSERT INTO prescriptionDetails(idPrescription, idDrugCatalog, startdate, enddate, instructions)
VALUES (7, 3, '20170218', '20170223', '0,25 mg cada 6 horas');

INSERT INTO prescriptionDetails(idPrescription, idDrugCatalog, startdate, enddate, instructions)
VALUES (7, 4, '20170218', '20170225', 'Capsula de 65 mg en caso de dolor');

INSERT INTO prescriptionDetails(idPrescription, idDrugCatalog, startdate, enddate, instructions)
VALUES (8, 5, '20170328', '20170412', 'Una capsula cada 8 horas.');

INSERT INTO prescriptionDetails(idPrescription, idDrugCatalog, startdate, enddate, instructions)
VALUES (8, 6, '20170328', '20170402', '10 mg cada 6 horas');

-- LabtestCatalog
INSERT INTO labtestCatalog(name);
VALUES ('Perfil de lipidos');

INSERT INTO labtestCatalog(name);
VALUES ('Perfil de Hormonal');

-- Labtest
INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20160612', 1, 1);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20160612', 2, 1);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20160629', 1, 2);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20160629', 2, 2);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20160709', 1, 3);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20160709', 2, 3);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20161004', 1, 2);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20161004', 2, 2);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20161215', 1, 1);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20161215', 2, 1);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20170111', 1, 3);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20170111', 2, 3);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20170113', 1, 1);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20170113', 2, 1);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20170125', 1, 2);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20170125', 2, 2);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20170202', 1, 3);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20170202', 2, 3);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20170211', 1, 2);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20170211', 2, 2);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20170218', 1, 1);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20170218', 2, 1);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20170303', 1, 3);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20170303', 2, 3);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20170305', 1, 1);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20170305', 2, 1);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20170323', 1, 2);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20170323', 2, 2);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20170328', 1, 3);

INSERT INTO labtest(dateLabtest, idLabtestCatalog, idRecord)
VALUES ('20170328', 2, 3);

-- LabtestIndicatorCatalog
INSERT INTO LabtestIndicatorCatalog(minVal, maxVal, indicator, idLabtestCatalog)
VALUES (23, 163, 'Hormona Foliculo Estimulante', 2);

INSERT INTO LabtestIndicatorCatalog(minVal, maxVal, indicator, idLabtestCatalog)
VALUES (15.9, 54, 'Hormona Luteinizante', 2);

INSERT INTO LabtestIndicatorCatalog(minVal, maxVal, indicator, idLabtestCatalog)
VALUES (0, 32.2, 'Estradiol', 2);

INSERT INTO LabtestIndicatorCatalog(minVal, maxVal, indicator, idLabtestCatalog)
VALUES (0, 200, 'Colesterol total', 1);

INSERT INTO LabtestIndicatorCatalog(minVal, maxVal, indicator, idLabtestCatalog)
VALUES (0, 100, 'LDL Colesterol', 1);

INSERT INTO LabtestIndicatorCatalog(minVal, maxVal, indicator, idLabtestCatalog)
VALUES (60, 200, 'HDL Colesterol', 1);

INSERT INTO LabtestIndicatorCatalog(minVal, maxVal, indicator, idLabtestCatalog)
VALUES (0, 100, 'No HDL Colesterol', 1);

INSERT INTO LabtestIndicatorCatalog(minVal, maxVal, indicator, idLabtestCatalog)
VALUES (0, 150, 'Trigliceridos', 1);

INSERT INTO LabtestIndicatorCatalog(minVal, maxVal, indicator, idLabtestCatalog)
VALUES (0, 3.5, 'Relacion colesterol total / HDL Colesterol', 1);

INSERT INTO LabtestIndicatorCatalog(minVal, maxVal, indicator, idLabtestCatalog)
VALUES (120, 300, 'Apolipoproteina A1', 1);

INSERT INTO LabtestIndicatorCatalog(minVal, maxVal, indicator, idLabtestCatalog)
VALUES (0, 90, 'Apolipoproteina B', 1);

INSERT INTO LabtestIndicatorCatalog(minVal, maxVal, indicator, idLabtestCatalog)
VALUES (0, 0.4, 'Relacion Apo B/ Apo A1', 1);

--LabtestResults
INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (200, 'N', 'Esta en el límite de colesterol', 1, 4);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (80, 'N', 'Bien, un poco alto', 1, 5);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (120, 'N', 'Buen nivel', 1, 6);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (80, 'N', 'Bien', 1, 7);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (130, 'N', 'Bien', 1, 8);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (1.666666667, 'N', 'Buena relación', 1, 9);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (150, 'N', 'Bien', 1, 10);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (45, 'N', 'Muy bien', 1, 11);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (0.3, 'N', 'Bien', 1, 12);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (102, 'N', 'Buen nivel', 2, 1);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (32, 'N', 'Bien', 2, 2);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (28, 'N', 'Bien', 2, 3);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (164, 'N', 'Bien', 3, 4);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (70, 'N', 'Un poco alto', 3, 5);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (88, 'N', 'En el nivel', 3, 6);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (76, 'N', 'En el nivel', 3, 7);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (126, 'N', 'Bien', 3, 8);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (1.863636364, 'N', 'Bien', 3, 9);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (200, 'N', 'Bien', 3, 10);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (70, 'N', 'Un poco alto pero en el nivel', 3, 11);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (0.35, 'N', 'Buen nivel', 3, 12);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (84, 'N', 'Bien', 4, 1);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (45, 'N', 'Buen nivel', 4, 2);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (33, 'Y', 'Un poco pasado', 4, 3);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (170, 'N', 'Bien', 5, 4);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (65, 'N', 'Bien', 5, 5);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (120, 'N', 'Dentro del rango aceptable', 5, 6);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (69, 'N', 'Bien', 5, 7);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (113, 'N', 'Bien', 5, 8);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (1.416666667, 'N', 'Bien', 5, 9);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (180, 'N', 'Bien', 5, 10);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (70, 'N', 'Bien', 5, 11);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (0.3888888889, 'N', 'Buen nivel', 5, 12);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (110, 'N', 'Dentro del rango aceptable', 6, 1);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (47.8, 'N', 'Buen nivel', 6, 2);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (17, 'N', 'Bien', 6, 3);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (200, 'N', 'En el limite', 7, 4);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (67, 'N', 'Dentro del rango aceptable', 7, 5);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (165, 'N', 'Bien', 7, 6);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (80, 'N', 'Bien', 7, 7);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (155, 'Y', 'Un poco pasado', 7, 8);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (1.212121212, 'N', 'Dentro del rango aceptable', 7, 9);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (103, 'Y', 'Se encuentra baja', 7, 10);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (100, 'Y', 'Se encuentra alta', 7, 11);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (0.9708737864, 'Y', 'Se encuentra alta', 7, 12);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (177, 'N', 'Buen nivel', 8, 1);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (50, 'N', 'Buen nivel', 8, 2);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (30, 'N', 'Bien', 8, 3);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (155, 'N', 'Buen nivel', 9, 4);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (80, 'N', 'Dentro del rango aceptable', 9, 5);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (85, 'N', 'Un poco bajo, pero dentro del rango', 9, 6);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (70, 'N', 'Bien', 9, 7);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (144, 'N', 'Bien', 9, 8);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (1.823529412, 'N', 'Dentro del rango aceptable', 9, 9);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (234, 'N', 'Bien', 9, 10);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (88, 'N', 'Casi en el limite, pero bien', 9, 11);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (0.3760683761, 'N', 'Casi en el limite, pero bien', 9, 12);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (15, 'Y','Se encuentra baja', 10, 1);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (49, 'N', 'Bien', 10, 2);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (33, 'Y', 'Un poco alta', 10, 3);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (130, 'N', 'Buen nivel', 11, 4);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (98, 'N', 'Casi en el limite, pero bien', 11, 5);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (80, 'N', 'Bien', 11, 6);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (76, 'N', 'Bien', 11, 7);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (115, 'N', 'Bien', 11, 8);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (1.625, 'N', 'Dentro del rango aceptable', 11, 9);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (189, 'N', 'Bien', 11, 10);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (68, 'N', 'Bien', 11, 11);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (0.3597883598, 'N', 'Dentro del rango aceptable', 11, 12);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (70, 'N', 'Buen nivel', 12, 1);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (50, 'N', 'Bien', 12, 2);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (18, 'N', 'Bien', 12, 3);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (205, 'Y', 'Se encuentra alta', 13, 4);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (108, 'Y', 'Se encuentra alta', 13, 5);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (50, 'Y', 'Se encuentra baja', 13, 6);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (56, 'N', 'Bien', 13, 7);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (105, 'N', 'Bien', 13, 8);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (4.1, 'Y', 'Se encuentra alta', 13, 9);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (129, 'N', 'Un poco bajo, pero dentro del rango', 13, 10);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (60, 'N', 'Bien', 13, 11);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (0.4651162791, 'Y', 'Un poco alta', 13, 12);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (37, 'N', 'Bajo nivel, pero dentro del rango aceptable', 14, 1);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (38, 'N', 'Bien', 14, 2);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (30, 'N', 'Bien', 14, 3);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (177, 'N', 'Buen nivel', 15, 4);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (70, 'N', 'Bien', 15, 5);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (150, 'N', 'Bien', 15, 6);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (52, 'N', 'Bien', 15, 7);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (91, 'N', 'Bien', 15, 8);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (1.18, 'N', 'Dentro del rango aceptable', 15, 9);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (142, 'N', 'Bien', 15, 10);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (35, 'N', 'Bien', 15, 11);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (0.2464788732, 'N', 'Bien', 15, 12);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (58, 'N', 'Buen nivel', 16, 1);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (47, 'N', 'Buen nivel', 16, 2);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (27, 'N', 'Bien', 16, 3);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (176, 'N', 'Buen nivel', 17, 4);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (47, 'N', 'Bien', 17, 5);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (175, 'N', 'Bien', 17, 6);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (88, 'N', 'Bien', 17, 7);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (37, 'N', 'Un poco baja', 17, 8);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (1.005714286, 'N', 'Bien', 17, 9);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (97, 'Y', 'Se encuentra baja', 17, 10);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (110, 'Y', 'Se encuentra alta', 17, 11);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (1.134020619, 'Y', 'Se encuentra alta', 17, 12);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (83, 'N', 'Bien', 18, 1);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (50, 'N', 'Bien', 18, 2);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (28, 'N', 'Bien', 18, 3);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (145, 'N', 'Buen nivel', 19, 4);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (65, 'N', 'Bien', 19, 5);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (115, 'N', 'Bien', 19, 6);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (72, 'N', 'Bien', 19, 7);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (115, 'N', 'Bien', 19, 8);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (1.260869565, 'N', 'Dentro del rango aceptable', 19, 9);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (178, 'N', 'Bien', 19, 10);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (65, 'N', 'Bien', 19, 11);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (0.3651685393, 'N', 'Dentro del rango aceptable', 19, 12);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (98, 'N', 'Dentro del rango aceptable', 20, 1);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (60, 'Y', 'Se encuentra alta', 20, 2);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (40, 'Y', 'Se encuentra alta', 20, 3);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (123, 'N', 'Buen nivel', 21, 4);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (67, 'N', 'Bien', 21, 5);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (78, 'N', 'Bien', 21, 6);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (55, 'N', 'Bien', 21, 7);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (87, 'N', 'Bien', 21, 8);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (1.576923077, 'N', 'Dentro del rango aceptable', 21, 9);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (267, 'N', 'Bien', 21, 10);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (85, 'N', 'Bien', 21, 11);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (0.3183520599, 'N', 'Dentro del rango aceptable', 21, 12);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (43, 'N', 'Buen nivel', 22, 1);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (37, 'N', 'Buen nivel', 22, 2);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (18, 'N', 'Bien', 22, 3);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (230, 'Y', 'Se encuentra alto', 23, 4);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (105, 'Y', 'Se encuentra alto', 23, 5);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (40, 'Y', 'Se encuentra bajo', 23, 6);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (67, 'N', 'Bien', 23, 7);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (118, 'N', 'Bien', 23, 8);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (5.75, 'Y', 'Se encuentra fuera del rango aceptable', 23, 9);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (156, 'N', 'Bien', 23, 10);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (45, 'N', 'Bien', 23, 11);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (0.2884615385, 'N', 'Se encuentra dentro del rango aceptable', 23, 12);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (80, 'N', 'Buen nivel', 24, 1);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (46, 'N', 'Buen nivel', 24, 2);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (30, 'N', 'Bien', 24, 3);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (167, 'N', 'Bien', 25, 4);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (38, 'N', 'Bien', 25, 5);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (119, 'N', 'Bien', 25, 6);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (78, 'N', 'Bien', 25, 7);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (129, 'N', 'Bien', 25, 8);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (1.403361345, 'N', 'Se encuentra dentro del rango aceptable', 25, 9);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (227, 'N', 'Bien', 25, 10);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (89, 'N', 'Casi en el limite, pero bien', 25, 11);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (0.3920704846, 'N', 'Casi en el limite, pero bien', 25, 12);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (19, 'Y', 'Bajo nivel', 26, 1);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (46,'N','Dentro del rango aceptable',26,2);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (30,'N','Dentro del rango aceptable',26,3);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (147,'N','Buen nivel',27,4);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (78,'N','Buen nivel',27,5);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (115,'N','Bien',27,6);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (89,'N','Bien',27,7);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (118,'N','Bien',27,8);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (1.27826087,'N','Dentro del rango aceptable',27,9);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (200,'N','Bien',27,10);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (80,'N','Bien',27,11);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (0.4,'N','En el limite',27,12);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (27,'N','Bien',28,1);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (37,'N','Bien',28,2);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (30,'N','Bien',28,3);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (189,'N','Buen nivel',29,4);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (89,'N','Buen nivel',29,5);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (78,'N','Bien',29,6);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (96,'N','Bien',29,7);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (111,'N','Bien',29,8);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (2.423076923,'N','Dentro del rango aceptable',29,9);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (280,'N','Bien',29,10);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (78,'N','Bien',29,11);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (0.2785714286,'N','Dentro del rango aceptable',29,12);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (19,'Y','Fuera del rango aceptable',30,1);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (27,'N','Dentro del rango aceptable',30,2);

INSERT INTO labtestResults(testVal, isAnormal, comments, idLabtest, idLabtestIndicatorCatalog)
VALUES (34,'Y','Fuera del rango aceptable',30,3);