/*In this first task you need to create a new procedure called AddBooking to add a new table booking record.
The procedure should include four input parameters in the form of the following bookings parameters:
booking id, 
booking date,
and table number.*/
delimiter //
create procedure AddBooking (in booking_id int,in booking_date date,in table_number int)
begin
insert into bookings (BookingID,BookingDate,TableNumber) values(booking_id,booking_date,table_number);
SELECT CONCAT('Booking ', booking_id, ' for table ', table_number, ' on ', booking_date, ' has been added.') AS confirmation;
end //
delimiter ;


/*For your second task, Little Lemon need you to create a new procedure called UpdateBooking that they can use to update existing bookings in the booking table.
The procedure should have two input parameters in the form of booking id and booking date. You must also include an UPDATE statement inside the procedure. */

delimiter //
create procedure UpdateBooking (in booking_id int,in booking_date date)
begin
update bookings
set BookingDate = booking_date
where BookingID = booking_id;
end //
delimiter ;

/*For the third and final task, Little Lemon need you to create a new procedure called CancelBooking that they can use to cancel or remove a booking.
The procedure should have one input parameter in the form of booking id. You must also write a DELETE statement inside the procedure. */

DELIMITER //
CREATE PROCEDURE DeleteBooking (IN booking_id INT)
BEGIN
DELETE FROM bookings
WHERE BookingID = booking_id;
SELECT CONCAT('Booking ', booking_id, ' deleted') AS Confirmation;
END //
DELIMITER ;
