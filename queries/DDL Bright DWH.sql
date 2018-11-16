create TABLE
H_Leads
(
	s_id		INT	IDENTITY		PRIMARY KEY,
	lead_id		VARCHAR(100)		NULL,
	[timestamp] DATETIME			NULL,
	[source]	VARCHAR(100)		NULL
)


-- SAT

CREATE TABLE
S_Leads
(
	s_id				INT,
	firstName			VARCHAR(255)		NULL,
	lastName			VARCHAR(255)		NULL,
	displayName			VARCHAR(255)		NULL,
	emailAddress		VARCHAR(255)		NULL,
	isActive			VARCHAR(5)			NULL,
	isReseller			VARCHAR(5)			NULL,
	userTimeZone		VARCHAR(255)		NULL,
	[timestamp]			DATETIME			NULL,
	[source]			VARCHAR(100)		NULL	
)

-- Metadata pipeline

CREATE TABLE
Package
(
	package_id			INT					NULL,
	-- Columns SSIS Metadata
)

CREATE TABLE
Execution
(
	execution_id		INT					PRIMARY KEY,
	package_id			INT					NULL,

)

-- DDL Staging
CREATE TABLE
SpringSharp_Users
(
	id					VARCHAR(255)		NULL,
	firstName			VARCHAR(255)		NULL,
	lastName			VARCHAR(255)		NULL,
	displayName			VARCHAR(255)		NULL,
	emailAddress		VARCHAR(255)		NULL,
	isActive			VARCHAR(5)			NULL,
	isReseller			VARCHAR(5)			NULL,
	userTimeZone		VARCHAR(255)		NULL
)

CREATE TABLE
Gripp_Company
(
	[identity]							VARCHAR(200)	NULL,
	website								VARCHAR(200)	NULL,					
	notes								VARCHAR(200)	NULL,
	invoicesendto						VARCHAR(255)	NULL,
	invoiceaddress_companyname			VARCHAR(255)	NULL,
	invoiceaddress_attn					VARCHAR(255)	NULL,
	invoiceaddress_street				VARCHAR(255)	NULL,
	invoiceaddress_streetnumber			VARCHAR(255)	NULL,
	invoiceaddress_addressline2			VARCHAR(255)	NULL,
	invoiceaddress_zipcode				VARCHAR(255)	NULL,
	invoiceaddress_city					VARCHAR(255)	NULL,
	invoiceaddress_country				VARCHAR(255)	NULL,
	customernumber						VARCHAR(255)	NULL,
	bankaccount							VARCHAR(255)	NULL,
	bankascription						VARCHAR(255)	NULL,
	bankcity							VARCHAR(255)	NULL,
	bic									VARCHAR(255)	NULL,
	externalreference					VARCHAR(255)	NULL,
	additionaltermofpayment				VARCHAR(255)	NULL,
	invoicesendby						VARCHAR(255)	NULL,
	invoiceemail						VARCHAR(255)	NULL,
	vatnumber							VARCHAR(255)	NULL,
	vatshifted							VARCHAR(255)	NULL,
	vat									VARCHAR(255)	NULL,
	cocnumber							VARCHAR(255)	NULL,
	foundationdate						VARCHAR(255)	NULL,
	active								VARCHAR(255)	NULL,
	postaddress							VARCHAR(255)	NULL,
	postaddress_street					VARCHAR(255)	NULL,
	postaddress_streetnumber			VARCHAR(255)	NULL,
	postaddress_addressline2			VARCHAR(255)	NULL,
	postaddress_zipcode					VARCHAR(255)	NULL,
	postaddress_city					VARCHAR(255)	NULL,
	postaddress_country					VARCHAR(255)	NULL,
	visitingaddress_street				VARCHAR(255)	NULL,
	visitingaddress_addressline2		VARCHAR(255)	NULL,
	visitingaddress_streetnumber		VARCHAR(255)	NULL,
	visitingaddress_zipcode				VARCHAR(255)	NULL,
	visitingaddress_city				VARCHAR(255)	NULL,
	visitingaddress_country				VARCHAR(255)	NULL,
	visitingaddress_lng					VARCHAR(255)	NULL,
	visitingaddress_lat					VARCHAR(255)	NULL,
	email								VARCHAR(255)	NULL,
	phone								VARCHAR(255)	NULL,
	mobile								VARCHAR(255)	NULL,
	relationtype						VARCHAR(255)	NULL,
	accountmanager						VARCHAR(255)	NULL,
	companyname							VARCHAR(255)	NULL,
	salutation							VARCHAR(255)	NULL,
	initials							VARCHAR(255)	NULL,
	title								VARCHAR(255)	NULL,
	firstname							VARCHAR(255)	NULL,
	infix								VARCHAR(255)	NULL,
	lastname							VARCHAR(255)	NULL,
	screenname							VARCHAR(255)	NULL,
	extendedproperties					VARCHAR(255)	NULL
)

CREATE TABLE
Gripp_Contact
(
	title								VARCHAR(255)	NULL,
	showoncompanycard					VARCHAR(255)	NULL,
	dateofbirth							VARCHAR(255)	NULL,
	notes								VARCHAR(255)	NULL,
	active								VARCHAR(255)	NULL,
	email								VARCHAR(255)	NULL,
	phone								VARCHAR(255)	NULL,
	mobile								VARCHAR(255)	NULL,
	department							VARCHAR(255)	NULL,
	[function]							VARCHAR(255)	NULL,
	company								VARCHAR(255)	NULL,
	salutation							VARCHAR(255)	NULL,
	initials							VARCHAR(255)	NULL,
	firstname							VARCHAR(255)	NULL,
	infix								VARCHAR(255)	NULL,
	lastname							VARCHAR(255)	NULL,
	extendedproperties					VARCHAR(255)	NULL
)

CREATE TABLE
Gripp_Employee
(
	userphoto							VARCHAR(255)	NULL,
	title								VARCHAR(255)	NULL,
	screenname							VARCHAR(255)	NULL,
	number								VARCHAR(255)	NULL,
	dateofbirth							VARCHAR(255)	NULL,
	socialsecuritynumber				VARCHAR(255)	NULL,
	emailprivate						VARCHAR(255)	NULL,
	bankaccount							VARCHAR(255)	NULL,
	bankcity							VARCHAR(255)	NULL,
	bankascription						VARCHAR(255)	NULL,
	notes								VARCHAR(255)	NULL,
	employeesince						VARCHAR(255)	NULL,
	username							VARCHAR(255)	NULL,
	active								VARCHAR(255)	NULL,
	[role]								VARCHAR(255)	NULL,
	email								VARCHAR(255)	NULL,
	phone								VARCHAR(255)	NULL,
	mobile								VARCHAR(255)	NULL,
	street								VARCHAR(255)	NULL,
	adresline2							VARCHAR(255)	NULL,
	streetnumber						VARCHAR(255)	NULL,
	zipcode								VARCHAR(255)	NULL,
	city								VARCHAR(255)	NULL,
	country								VARCHAR(255)	NULL,
	[function]							VARCHAR(255)	NULL,
	salutation							VARCHAR(255)	NULL,
	initials							VARCHAR(255)	NULL,
	firstname							VARCHAR(255)	NULL,
	infix								VARCHAR(255)	NULL,
	lastname							VARCHAR(255)	NULL,
	extendedproperties					VARCHAR(255)	NULL
)





select
*
from
h_Leads

select
id
from
BrightSQL.dbo.SpringSharp_Users
group by
id

GO
CREATE VIEW
vwFact
AS
	SELECT
	*
	FROM
	S_Leads
GO

CREATE NONCLUSTERED INDEX
nc_isActive
ON S_Leads(isActive)