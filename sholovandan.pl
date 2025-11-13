#!/usr/bin/perl


print "Content-type:text/html\n\n";

print <<"HTML";
<html>
<head>
    <title>Sholavandan Town Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f6fa;
            color: #333;
            margin: 30px;
        }
        h1 {
            color: #2c3e50;
            text-align: center;
        }
        h2 {
            color: #34495e;
            border-bottom: 2px solid #ccc;
        }
        p {
            line-height: 1.6;
        }
        table {
            width: 70%;
            margin: 15px auto;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #aaa;
            padding: 8px 12px;
            text-align: left;
        }
        th {
            background-color: #3498db;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #ecf0f1;
        }
    </style>
</head>
<body>
    <h1>Sholavandan Town Panchayat - Madurai District</h1>

    <h2>General Information</h2>
    <p><b>District:</b> Madurai, Tamil Nadu</p>
    <p><b>Total Population (2011):</b> 22,578</p>
    <p><b>Males:</b> 11,168 &nbsp;&nbsp; <b>Females:</b> 11,410</p>
    <p><b>Number of Wards:</b> 18</p>
    <p><b>Total Houses:</b> 5,936</p>
    <p><b>Current Estimated Population (2025):</b> 32,800</p>

    <h2>Population & Literacy</h2>
    <table>
        <tr><th>Category</th><th>Data</th></tr>
        <tr><td>Children (0-6 years)</td><td>2,213 (9.80%)</td></tr>
        <tr><td>Female Sex Ratio</td><td>1022 (State Avg: 996)</td></tr>
        <tr><td>Child Sex Ratio</td><td>1030 (State Avg: 943)</td></tr>
        <tr><td>Total Literacy Rate</td><td>82.41% (State Avg: 80.09%)</td></tr>
        <tr><td>Male Literacy</td><td>88.98%</td></tr>
        <tr><td>Female Literacy</td><td>75.98%</td></tr>
    </table>

    <h2>Caste Factor</h2>
    <table>
        <tr><th>Community</th><th>Percentage</th></tr>
        <tr><td>Schedule Caste (SC)</td><td>14.84%</td></tr>
        <tr><td>Schedule Tribe (ST)</td><td>0.08%</td></tr>
    </table>

    <h2>Work Profile</h2>
    <p><b>Total Workers:</b> 9,602 (Males: 6,702 | Females: 2,900)</p>
    <table>
        <tr><th>Type of Work</th><th>Percentage</th></tr>
        <tr><td>Main Work</td><td>86.28%</td></tr>
        <tr><td>Marginal Work</td><td>13.72%</td></tr>
    </table>

    <h2>Administration</h2>
    <p>
        The Sholavandan Town Panchayat provides basic amenities like water and sewerage
        to all households. It also maintains roads within its jurisdiction and collects
        property taxes. Elections for 18 wards are held every 5 years.
    </p>

    <h3 style="text-align:center;">&copy; 2025 Sholavandan Information Portal</h3>
</body>
</html>
HTML
