select * from bookings;
insert into bookings (bookingID,BookingDate,TableNumber) values (7,'2024-10-10',4),(8,'2024-09-12',3),(9,'2024-11-2',4);

delimiter //
create procedure CheckBooking(in book_date date,in tableno int)
begin
DECLARE booking_status VARCHAR(50);
IF EXISTS (SELECT 1 FROM bookings WHERE BookingDate = book_date AND TableNumber = tableno) THEN
	SET booking_status = CONCAT('Table ', tableno, ' is already booked');
ELSE
	SET booking_status = CONCAT('Table ', tableno, ' is available');
END IF;
-- Return the booking status
SELECT booking_status AS Status;
END //
DELIMITER ;

call checkbooking('2024-10-10',4);

/*For your third and final task, Little Lemon need to verify a booking, and decline any reservations for tables that are already booked under another name. 
Since integrity is not optional, Little Lemon need to ensure that every booking attempt includes these verification and decline steps.
However, implementing these steps requires a stored procedure and a transaction. 
To implement these steps, you need to create a new procedure called AddValidBooking. 
This procedure must use a transaction statement to perform a rollback if a customer reserves a table that’s already booked under another name.  
Use the following guidelines to complete this task:
The procedure should include two input parameters in the form of booking date and table number.
It also requires at least one variable and should begin with a START TRANSACTION statement.
Your INSERT statement must add a new booking record using the input parameter's values.
Use an IF ELSE statement to check if a table is already booked on the given date. 
If the table is already booked, then rollback the transaction. If the table is available, then commit the transaction. */
delimiter //
create procedure AddValidBooking(in booking_date date,in table_number int)
begin
declare booking_count int;
declare booking_status varchar(50);

start transaction;
select count(*) into booking_count from bookings where BookingDate = booking_date and TableNumber = table_number;
if booking_count > 0 then
	set booking_status = CONCAT('Table ', table_number, ' is already booked - booking cancelled');
    rollback;
else
	insert into bookings(BookingDate,TableNumber) values(booking_date,table_number);
    set booking_status =  CONCAT('Booking for table ', table_number, ' on ', booking_date, ' is confirmed');
    commit;
end if;
SELECT booking_status AS `Booking status`;
END //

DELIMITER ;

call AddValidBooking('2024-10-10',4);

