   M S B A M L   `   `   `  ����B  >MvvmApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:MvvmApp.ViewsMvvmApp.Views  5           MvvmApp.Views.EmployeeView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:MvvmApp.Views     5      .��5	      � $��15q�6     � ColumnDefinitions  5
   
   �� 5      $
��auto �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� $��Employee Management��6   $��0��5      $��0��6   $��2��5      $��20(�5      $
��Bold"�5      $
��Left=�5      $	��5,8q�6/    �� Padding$ 3q�6<   �� 5   
   $��Enter Id��6   $��1��5      $��0��5       $	��5,8q�6   $ 3q�6*   �� 5!   
   $��
Enter Name��6   $��2��5"      $��0��5#      $	��5,8q�6   $ 3q�6*   �� 5$   
   $��	Enter Age��6   $��3��5%      $��0��5&      $	��5,8q�6   $ 3q�6*   �� 5(   
   -   5        $��txtId��5(      $��1��5)      $��1��5*      $	��5,8q�6"   $��3q�6/   ��5+      ��  �� Path$ CurrentEmployee.Id� �� Mode$ TwoWay=��� 5-   
   -   5        $��txtName��5-      $��2��5.      $��1��5/      $	��5,8q�6"   $��3q�6/   ��50      �� $ CurrentEmployee.Name�$ TwoWay=��� 52   
   -   5        $��txtAge��52      $��3��53      $��1��54      $	��5,8q�6"   $��3q�6/   ��55      �� $ CurrentEmployee.Age�$ TwoWay=��� 57   
    �� Orientation$ 
Horizontal=�6   $��4��58      $��1��59      $	��5,8q�6   .+�5:      �� -   5        $��btnAdd��5:      $	��ADD��5;      $	��5,8q�6#   $��3q�60   ��5<      �� $ SaveCommand��� 5>      -   5        $��	btnSearch��5>      $��Search��5?      $	��5,8q�6&   $��3q�63   ��5@      �� $ SearchCommand��� 5B      -   5        $��	btnUpdate��5B      $��Update��5C      $	��5,8q�6&   $��3q�63   ��5D      �� $ UpdateCommand��� 5F      -   5        $��	btnDelete��5F      $��Delete��5G      $	��5,8q�6&   $��3q�63   ��5H      �� $ DeleteCommand�5K      �� 5L   
   -   5        $��txtBlockMessage��5L      $��5��5M      $��1��5N      $	��5,8q�6$   $ 3q�61   ��5O      �� $ Message�&   System.Windows.Controls.DataGrid  5Q   
   -	   5        $��dgEmployees��5Q         AutoGenerateColumns .  $��6��5S      $��1��5T      $	��5,8q�6$   $��3q�61   ��5U      �� $ EmployeesList�$ TwoWay=�   Columns 5V      0  *System.Windows.Controls.DataGridTextColumn  5W      ,  &System.Windows.Controls.DataGridColumn   Header$ Employee Id��6%   	   Width5  /System.Windows.Controls.DataGridLengthConverter$
	 auto 6:   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6G   �� $ Id�  5X      $
 Name��6%   $
	 auto 63   
 6@   �� $
 Name�  5Y      $	 Age��6%   $
	 auto 62   
 6?   �� $	 Age�5]      5^      5_      