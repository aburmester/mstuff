classdef TabConverterTest < matlab.unittest.TestCase
    properties
        tabFile = 'BlueSky.txt'
        proj
    end
    
    methods(TestClassSetup)
        function OpenProject(testCase)
            testCase.proj = openProject(fileparts(mfilename('fullpath')));
        end
    end
    
    methods(Test)
        function ReadInFile(testCase)
            tc = TabConverter();
            tc.ReadFile(testCase.tabFile);
            testCase.assertNotEmpty(tc.tabText, 'File successfully read!');
        end
    end
end

