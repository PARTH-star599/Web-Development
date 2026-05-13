<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
<title>Hospital Appointment</title>

<style>
body{
    font-family: Arial;
    background:#f4f4f4;
    text-align:center;
}

table{
    width:80%;
    margin:auto;
    border-collapse:collapse;
    background:white;
}

th{
    background:#007bff;
    color:white;
    padding:10px;
}

td{
    border:1px solid black;
    padding:10px;
}

tr:hover{
    background:#eeeeee;
}
</style>

</head>

<body>

<h2>Hospital Appointment System</h2>

<table>

<tr>
<th>Patient Name</th>
<th>Doctor Name</th>
<th>Department</th>
<th>Time</th>
</tr>

<xsl:for-each select="hospital/appointment">

<tr>
<td><xsl:value-of select="patient_name"/></td>
<td><xsl:value-of select="doctor_name"/></td>
<td><xsl:value-of select="department"/></td>
<td><xsl:value-of select="time"/></td>
</tr>

</xsl:for-each>

</table>

</body>
</html>

</xsl:template>

</xsl:stylesheet>
