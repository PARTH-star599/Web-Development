<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">

<html>
<head>
    <style>
        body {
            font-family: Arial;
            text-align: center;
            background: #f4f4f4;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: auto;
            background: white;
        }

        th {
            background: #007bff;
            color: white;
            padding: 10px;
        }

        td {
            padding: 10px;
            border: 1px solid #ccc;
        }

        .fail {
            color: red;
            font-weight: bold;
        }
    </style>
</head>

<body>

<h2>Student Application</h2>

<table>
<tr>
    <th>Name</th>
    <th>Course</th>
    <th>Marks</th>
    <th>Grade</th>
</tr>

<xsl:for-each select="students/student">
<tr>
    <td><xsl:value-of select="name"/></td>
    <td><xsl:value-of select="course"/></td>
    <td><xsl:value-of select="marks"/></td>
    <td>
        <xsl:choose>
            <xsl:when test="marks >= 75">A</xsl:when>
            <xsl:when test="marks >= 60">B</xsl:when>
            <xsl:when test="marks >= 50">C</xsl:when>
            <xsl:otherwise>Fail</xsl:otherwise>
        </xsl:choose>
    </td>
</tr>
</xsl:for-each>

</table>

</body>
</html>

</xsl:template>

</xsl:stylesheet>
