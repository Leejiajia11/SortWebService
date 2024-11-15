using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SortService.localhost;

namespace SortService
{
    public partial class SortPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
   
        }

        protected void btnSort_Click1(object sender, EventArgs e)
        {
            try
            {
                // 获取用户输入的数字字符串
                string input = txtInput.Text;
                // 将字符串转换为整数数组
                string[] inputArray = input.Split(',');
                int[] numbers = Array.ConvertAll(inputArray, int.Parse);

                // 创建 Web 服务客户端
                WebService1 service = new WebService1();
                // 调用 Web 服务并获取排序结果
                int[] sortedNumbers = service.SortNumbers(numbers);

                // 显示排序结果
                lblResult.Text = string.Join(", ", sortedNumbers);
            }
            catch (Exception ex)
            {
                lblResult.Text = "错误：" + ex.Message;
            }
        }
    }
}