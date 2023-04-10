# WeeklyReport
Weekly Report System based on PHP 7.4.

## Project Summary
| Project name | Weekly Report system |
| -------- | ------- |
| Developer | Damon_Liu |
| Programming Language | PHP 7.4 |
| Database | Support for MySQL / MSSQL / PostgreSQL / <br> Oracle / MongoDB and other multiple databases (PDO) |
| System Architecture | MVC |
| Framework | None
| Front End | HTML + CSS + Javascript / Bootstrap |
| Deployment mode | Apache |
| Development tools | Notepad++ |
| Third party dependence | None |

## Project Architecture
```
project/
│            
├── app/                
│   ├── controllers/    
│   │   ├── DailyReportController.php    
│   │   ├── HomeController.php           
│   │   ├── LoginController.php          
│   │   ├── RegisterController.php       
│   │   ├── WeeklyReportController.php   
│   │   └── ...                          
│   │
│   ├── models/         
│   │   ├── DailyReportModel.php         
│   │   ├── UserModel.php                
│   │   ├── WeeklyReportModel.php        
│   │   └── ...                          
│   │
│   ├── views/          
│   │   ├── includes/    
│   │   │   ├── common.php                
│   │   │   ├── nav.php                   
│   │   │   └── ... 
│   │   └── pages/       
│   │       ├── daily_report_form.php     
│   │       ├── weekly_report_detail.php  
│   │       ├── weekly_report_list.php    
│   │       ├── login.php                 
│   │       ├── register.php              
│   │       └── ...                       
│   │
│   ├── auth.php        
│   ├── functions.php   
│   └── ...             
│
├── core/               
│   ├── Controller.php  
│   ├── Model.php       
│   ├── Database.php    
│   ├── Router.php      
│   └── ...             
│
├── public/             
│   ├── index.php       
│   ├── assets/         
│   │   ├── css/        
│   │   │   ├── login-register-page.css        
│   │   │   ├── weekly-report-detail-page.css  
│   │   │   ├── weekly-report-list-page.css    
│   │   │   └── ...
│   │   ├── js/         
│   │   └── ...
│   └── ...    
│
├── config/             
│   ├── database.php    
│   ├── config.php      
│   └── ...     
│
├── vendor/           
│   └── ...
├── .htaccess 
├── README.md
└── ... 

```
<br>
<b>Apps/: </b> &nbsp;&nbsp;<i>Application code, including the controllers, models, and views in the MVC.</i><br>
<b>Core/: </b> &nbsp;&nbsp;<i>Core code directory, including the controller base class, model base class, database base class, and routing base class.</i><br>
<b>public/: </b> &nbsp;&nbsp;<i>Public directory of the Web server, including front-end resources and entry files.</i><br>
<b>config/: </b> &nbsp;&nbsp;<i>Profiles, including database and routing configurations.</i><br>
<b>vendor/: </b> &nbsp;&nbsp;<i>Third-party dependency library.</i><br>
<b>.htaccess: </b> &nbsp;&nbsp;<i>The configuration file used for the Apache server.</i><br>
<b>README.md: </b> &nbsp;&nbsp;<i>Description document of the project.</i>
