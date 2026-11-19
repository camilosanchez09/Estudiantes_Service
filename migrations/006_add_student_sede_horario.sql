-- Sede y jornada/horario del estudiante.
-- La sede es el campus donde estudia y el horario la franja en que recibe clases.
ALTER TABLE students
  ADD COLUMN sede    VARCHAR(20) NOT NULL DEFAULT 'Tunja',
  ADD COLUMN horario VARCHAR(20) NOT NULL DEFAULT 'Diurno';

ALTER TABLE students
  ADD CONSTRAINT ck_students_sede
    CHECK (sede IN ('Tunja', 'Sogamoso', 'Duitama', 'Aguazul')),
  ADD CONSTRAINT ck_students_horario
    CHECK (horario IN ('Diurno', 'Nocturno', 'Virtual'));
