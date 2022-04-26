SELECT * FROM data_staff AS ds
LEFT JOIN staff_out_source AS sos ON ds.nik=sos.nik;
