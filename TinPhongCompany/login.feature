Feature: login
	In order to log in to website with account
@mytag
Scenario: Login website
	Given navigate to login page
	And i have entered user name and password
	| username   | password |
	| tpwindow@tpwindow.vn | tranlamphong0107 |
	When i click log in
	Then the result should navige to homepage with logged in

Scenario: Logout website
	Given navigate to login page
	And i have entered user name and password
	| username   | password |
	| tpwindow@tpwindow.vn | tranlamphong0107 |
	When i click log in
	And i click logout
	Then the result should navige to login page

Scenario: Login website no password
	Given navigate to login page
	And i have entered user name and no password
	| username   | password |
	| tpwindow@tpwindow.vn | |
	When i click log in
	Then stay in login site
	
Scenario: Login website no username
	Given navigate to login page
	And   i have entered no user name and password
	| username   | password |
	|  | tranlamphong0107 |
	When i click log in
	Then stay in login site

Scenario: Login website no password and username
	Given navigate to login page
	And i have entered empty
	| username   | password |
	|  | |
	When i click log in
	Then stay in login site

Scenario: Login website wrong username
	Given navigate to login page
	And  i have entered wrong username
	| username   | password |
	| nhom10.kcpmdddd.th2014@gmail.com | tranlamphong0107 |
	When i click log in
	Then stay in login site

Scenario: Login website wrong password
	Given navigate to login page
	And  i have entered wrong password
	| username   | password |
	| tpwindow@tpwindow.vn | 1www23456 |
	When i click log in
	Then stay in login site

Scenario: Login website wrong username and password
	Given navigate to login page
	And i have entered wrong username and password
	| username   | password |
	| nhom10.kcpm.th2014@gmail.ddcom | 1ddd23456 |
	When i click log in
	Then stay in login site

