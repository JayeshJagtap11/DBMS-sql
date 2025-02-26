drop trigger if exists Make_audit1;

delimiter //

CREATE TRIGGER Make_audit1
  AFTER DELETE ON lib_book
  FOR EACH ROW
BEGIN
  INSERT INTO lib_Audit (bid, bname, qty)
  VALUES (OLD.bid, OLD.bname,OLD.qty);
END;
//

delimiter ;



drop trigger if exists Make_audit2;

delimiter //

CREATE TRIGGER Make_audit2
  AFTER UPDATE ON lib_book
  FOR EACH ROW
BEGIN
  INSERT INTO lib_Audit (bid, bname, qty)
  VALUES (OLD.bid, OLD.bname,OLD.qty);
END;
//

delimiter ;