```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
begin
   for I in My_Arr'Range loop
      -- Incorrect indexing, should be My_Arr(I)
      if My_Arr(My_Arr(I)) > 5 then  
         Put_Line("Value greater than 5: " & Integer'Image(My_Arr(My_Arr(I))));
      end if;
   end loop;
exception
   when Constraint_Error =>
      Put_Line("Constraint Error: Index out of bounds");
end Example;
```