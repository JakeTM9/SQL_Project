
CREATE TABLE form_submission.classReference(
    FORM_ID INT PRIMARY KEY,
    CLASS_ID INT FOREIGN KEY REFERENCES dbo.Course(CRS_CODE)
);
