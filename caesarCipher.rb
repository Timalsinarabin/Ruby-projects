def caesar_cipher(texts,n)
    res = ''
    arr = texts.bytes;
    for i in 0...(arr.length)
        if (arr[i]>=65 && arr[i]<=90)
            res += ((arr[i]-65+n) % 26 + 65).chr;
        elsif (arr[i]>=97 && arr[i]<=122)
            res += ((arr[i]-97+n) % 26 + 97).chr;
        else
            res += arr[i].chr;
        end
    end
    puts"Encrypted text: #{res}";
end

print"Enter a text to encrypt: ";
texts = gets.chomp;
print"enter a key: ";
n = gets.chomp.to_i;
caesar_cipher(texts,n);