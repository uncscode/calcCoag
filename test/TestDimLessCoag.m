classdef TestCoag < matlab.unittest.TestCase
    methods (Test)
        function testCoag(testCase)
            addpath('../code')
            input = [1 2 3];
            output = dimLessCoag(input);
            testCase.verifyEqual(length(input), length(output));
        end
    end
end
