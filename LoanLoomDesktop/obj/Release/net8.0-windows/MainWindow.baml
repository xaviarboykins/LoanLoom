   M S B A M L   `   `   `  ����   LoanLoomDesktop     LoanLoomDesktop.MainWindow   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � Title$  	Loan Loom��$	��750��$	��700�����#121212 � WindowStyle$
 None=� � AllowsTransparency$
 True�� � Icon$ Images/Money.ico��.��� .+��� -   ���#1E1E1E$��30��$	��Top=�._�� .+��� $��	Loan Loom��$��Center=�
�������$��16(�$
��Bold"�$��10,0,0,0q���  �� Orientation$ 
Horizontal=�$��Right=�$��Center=�.+��� -   $��_��$��30��$��30��
������ 
�������
������ �� -   $	��□��$��30��$��30��
������ 
�������
������ �� -   $��X��$��30��$��30��
������ 
�������
������ ����  �� 
TargetType" ��.���  �� Property � �� �� Value
 �������  � ��
 ���� ��  � ��
 ����  �� Triggers P� 	 P� Property	 �@J�IsMouseOver
 P� Value$

 True��. ���  � ��
 �  ���� $��
20,35,20,0q�$	��Top=�.+��� $��Loan Balance:��$��14(�
��������� -   $��LoanBalanceTextBox��$	��200��$��0,5,0,15q����#1E1E1E
����������#424242$��1q��� $��Interest Rate (%):��$��14(�
��������� -   $��InterestRateTextBox��$	��200��$��0,5,0,15q����#1E1E1E
����������#424242$��1q��� $��Monthly Payment:��$��14(�
��������� -   $��MonthlyPaymentTextBox��$	��200��$��0,5,0,15q����#1E1E1E
����������#424242$��1q��� $��Extra Payment:��$��14(�
��������� -   $��ExtraPaymentTextBox��$	��200��$��0,5,0,15q����#1E1E1E
����������#424242$��1q��� $��Target Balance:��$��14(�
��������� -	   $��TargetBalanceTextBox��$	��200��$��0,5,0,15q����#1E1E1E
����������#424242$��1q��� $��Current Value:��$��14(�
��������� -
   $��CurrentValueTextBox��$	��200��$��0,5,0,15q����#1E1E1E
����������#424242$��1q��� $��Asset Type:��$��14(�
�������� $��0,5,0,15q�.+��� -   $��AssetTypeComboBox��$	��200��
���   �
����������#424242$��1q� � 	Resources  �� 
TargetType �� 	ClickMode d� 	IsChecked �� Path �� Mode �� RelativeSource �� AncestorType J� IsHitTestVisible �� SelectionBoxItem �� SelectionBoxItemTemplate � AllowsTransparency �� IsDropDownOpen J� SnapsToDevicePixels � ActualWidth �� Triggers �� 
TargetName��%�  '��       '�� V     �� " ��.���  � �� �#1E1E1E��  � ��
 �������  � ��$ 5q��� " ��.���  �@�OverridesDefaultStyle$
 True����  � �� �� " ��.R�� .+�d� $��ToggleButton��$��2��$|�False��$ Press=����#1E1E1E
������� �� $ IsDropDownOpen�$ TwoWay=� �� " ���� $��ContentSite��$ False��#��z #��z #��z��$��3,3,23,3q�$��Center=�$
��Left=�� $��Popup��$��Bottom=�$
 True��$|�False��#��z .��� $��DropDown��$
 True��#��z .+��� $��0q�$��1q����#424242
���   �._��� $��4q�$
��True��.����  P� 	 � {�$
 False��. ��� $ ToggleButton�� � �� �#2A2A2A�� $ ToggleButton�� � �� �#888888.@��� $.��(Vehicle (10% to 15% annual depreciation)���� $%��Home (3.6% annual depreciation)���� -   $��PlaceholderTextBox��$	��200��$��0q�
������ ���#CCCCCC$��0q�$ False��$@��:                                                        + ��$��Center=�$��12(��� -   $��	Calculate��$	��100��$��0,20,0,0q����#007ACC
����������#007ACC$��1q�$
��Bold"��� -   $��EquityTextBlock��$
��Bold"�$��14(�
�������$��0,10,0,0q��� -   $��EquityAtGoalTextBlock��$
��Bold"�$��14(�
�������$��0,10,0,0q��� -   $��ResultTextBlock��$
��Bold"�$��14(�
�������$��0,10,0,0q�