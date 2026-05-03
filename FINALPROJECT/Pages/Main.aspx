<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="FINALPROJECT.Pages.Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="<%= ResolveUrl("~/CSS/PagesBasic.css") %>" rel="stylesheet" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>
        דף פתיחה: יונקים פרהיסטוריים: ענקי העבר
            </h1>
        <h2>

לפני מיליוני שנים, כשכדור הארץ לבש צורה שונה ממה שאנו מכירים כיום, שוטטו עליו יצורים מרהיבים ועוצמתיים שעיצבו את ההיסטוריה של החיים. מעבר לדינוזאורים המוכרים, תקופות רחוקות אלה, ובמיוחד עידן היונקים, הביאו עמן מגוון עצום של בעלי חיים מיוחדים – ענקים שעמדו בקור המקפיא, טורפים בעלי שיניים יוצאות דופן, ויצורים שהפכו למלכי סביבתם. באתר זה נצא למסע בזמן כדי להכיר כמה מהיונקים הפרהיסטוריים המרשימים ביותר שחיו אי פעם, נחשוף את סודותיהם, נבין את התאמותיהם הייחודיות, ונגלה כיצד הם השתלבו בפאזל המורכב של האבולוציה. הצטרפו אלינו למסע אל עבר עולם נשכח, מלא בסיפורי הישרדות, הסתגלות וכוח בלתי נתפס של הטבע.
        </h2>
         <a id="LoginLink" href="<%= ResolveUrl("~/Login/Register.aspx") %>">הרשמה למשתמשים חדשים::</a>
<img src="<%= ResolveUrl("~/images/images (1).jpg") %>" alt="תילקולאו - אריה הכיס" style="height:400px; padding-right:200px;" />
    </div>
</asp:Content>
