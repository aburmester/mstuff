classdef TabConverter < handle
    %TABCONVERTER Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        tabFile
        tabText
    end
    
    methods
        function obj = TabConverter()
            
        end
        
        function ReadFile(self, tabFile)
            self.tabFile = tabFile;
            self.tabText = fileread(self.tabFile);
        end
    end
end

