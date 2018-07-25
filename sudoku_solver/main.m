clearvars

tic 

%% ���������

% ������ ������
problem =[8 0 0 0 0 0 0 0 0; 0 0 3 6 0 0 0 0 0; 0 7 0 0 9 0 2 0 0;
          0 5 0 0 0 7 0 0 0; 0 0 0 0 4 5 7 0 0; 0 0 0 1 0 0 0 3 0;
          0 0 1 0 0 0 0 6 8; 0 0 8 5 0 0 0 1 0; 0 9 0 0 0 0 4 0 0];

% problem =[0 0 0 0 0 0 0 2 1; 0 0 0 3 0 6 0 0 0; 0 0 0 8 0 0 0 0 0;
%           4 0 0 0 1 0 6 0 0; 0 0 0 7 0 0 3 0 0; 2 0 0 0 0 0 0 0 0;
%           0 0 0 0 9 0 0 4 0; 5 3 0 0 0 0 0 0 0; 0 8 6 0 0 0 0 0 0];

% �������� ��� ������� ��� ������ ���������? (���� - true, ��� -false)
countSolve = true;

%% ������� 

% ������� ������� �������
sol = InputCheckSudoku(problem);
% ������� ������������� ���� (��� ���������� ����������)
allow = allowValuesSudokuStruct(problem);

% �������
try
    % �������� ������ ������ �� ��������
    [problem,imp,sol] = RecurseSudoku(problem,sol,countSolve);
catch
end

toc