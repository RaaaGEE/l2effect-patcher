@echo off

REM 
REM ����� �������� ��������� �����. ����������� ���� �� ������ ������ �����.
REM 

REM ���� ��� ���������. ����� ���� ����� .u ����. ������ ��������� � ��������
SET file=skill.usk

REM ������ ������� ������
SET object=at.SkillAction_LocateEffect7

REM ��� ���� ��� ������
SET field=EffectClass

REM �� ��� ��������
SET effect=LineageEffect.su_sleep_ta

java -cp ./efpatcher.jar;./io.jar ru.rage.efpatcher.Starter -object %object% -field %field% -effect %effect% -file %file%
pause