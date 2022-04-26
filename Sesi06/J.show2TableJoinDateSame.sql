SELECT * FROM data_staff AS ds
INNER JOIN staff_out_source AS sos ON ds.joinDate=sos.joinDate;