using Plekhankov.DateBase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Plekhankov.Page
{
    /// <summary>
    /// Логика взаимодействия для PostachikPage.xaml
    /// </summary>
    public partial class PostachikPage : Window
    {
        public PostachikPage()
        {
            InitializeComponent();

            DataGridPost.ItemsSource = Plekhankov_DemoEkzEntities.GetContext().Postavchiki.ToList();
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            Window bckWindow = new MainWindow();
            bckWindow.Show();
            Close();
        }

        private void EditBtn_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
