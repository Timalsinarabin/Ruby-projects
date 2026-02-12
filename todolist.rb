puts"-"*50;
puts" "*20+"Todo list";
puts"-"*50;
puts"1. Create a new task";
puts"2. Delete a task";
puts"3. list all tasks";
puts"4. Quit";
puts"-"*50;
print"Enter your choice(number):"
num = gets.chomp.to_i;
tasks = []
while num!=4
    case num
        when 1
            print"Enter a new task:";
            task = gets.chomp;
            tasks.push(task);
            print"Enter your choice(number):"
            num = gets.chomp.to_i;
        when 2
            print"Delete task:"
            deltask = gets.chomp;
            if tasks.include?(deltask)
                tasks.delete(deltask);
                puts"Task deleted";
            else
                puts"Task not found";
            end
            print"Enter your choice(number):"
            num = gets.chomp.to_i;
        when 3
            puts"All tasks:";
            puts(tasks);
            print"Enter your choice(number):";;
            num = gets.chomp.to_i;
        else
            puts"Enter a valid case"
            print"Enter your choice(number):"
            num = gets.chomp.to_i;
    end
end
puts"Thankyou for using!!!"