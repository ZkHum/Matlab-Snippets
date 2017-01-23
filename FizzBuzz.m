% My five-minute implementation of FizzBuzz.
for i = 1:100
   % Wondering if there's a better way to do this than making a cell array every iteration.
   texts = {int2str(i),'Fizz', 'Buzz'};
   a = mod(i, 3)==0;
   b = mod(i, 5)==0;
   % My thinking:
   % I want to pull texts{startval:endval}, one or more elements.
   % startval should be 2 if a, 1 if ~(a||b), else 3
   % endval "           3 if b, 1 if ~(a||b), else 2
   % Adding/subtracting the truth value gets the 2 to be a 3 or the 3 to be a 2.
   %    startval = (2 + 1*(~a)); yields 2 if a, 3 if ~a
   %    endval = (3 -1*(~b)); 
   % And then to get the value to be a 1 if ~(a||b),
   %    startval = startval^(a||b), endval = ... etc
   % Collapsing that down, we get:
   fprintf('% 4d : %s\n', i, strcat(texts{((2 + 1*(~a))^(a||b)):((3 - 1*(~b))^(a||b))})); 
end
