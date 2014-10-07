<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="HW5SS.css" rel="stylesheet" type="text/css" />
</head>
<body class="mainBody">
    <form id="form1" runat="server">
    <div>
    <div id="title"><h1>Mike's Massively Awesome Mortgage Calculator</h1>
        </div>
        <hr style="color: #FFFFFF" />
        
        <br />
     
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
        Loan Amount<asp:Label ID="Label1" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
        : <asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
        &nbsp;
                  
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="Please insert a loan amount."></asp:RequiredFieldValidator>
                  
        <br /><br />      
        
        Annual Interest %<asp:Label ID="Label2" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
        : <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        &nbsp;
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="Please insert an annual interest percentage."></asp:RequiredFieldValidator>
        
        <br /><br />

        &nbsp; Loan Term (Yrs)<asp:Label ID="Label3" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
        : <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        &nbsp;
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="Please insert the loan term."></asp:RequiredFieldValidator>
        
        <br /><br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClear" runat="server" Text="Clear" />
        
        <br />
        
        <br />
        <asp:Label ID="Label4" runat="server" ForeColor="#CC0000" Text="*"></asp:Label>
        <asp:Label ID="Label5" runat="server" Text="- Required Fields"></asp:Label>
        
        <br /><br />
        <% If Not IsPostBack Then%>
        Welcome to my mortage calculator. Please complete the fields above to have your monthly playment and loan repayment schedule calulated for you.
        
        <% Else %>        
        Monthly Payment: &nbsp; <h2><asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label></h2>
        <br />
        
        <asp:GridView ID="loanGridView" runat="server" BackColor="White" BorderStyle="Solid" >
            <AlternatingRowStyle BackColor="#CCCCFF" />
            <EditRowStyle BackColor="White" />
            <HeaderStyle BackColor="Black" ForeColor="White" Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
            <RowStyle Height="40px" HorizontalAlign="Center" VerticalAlign="Middle" Width="400px" />
        </asp:GridView>
        <% End If%>    
        </div>
    </form>
</body>
</html>
