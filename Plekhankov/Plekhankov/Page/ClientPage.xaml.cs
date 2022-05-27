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
using Plekhankov.DateBase;

namespace Plekhankov.Page
{
    /// <summary>
    /// Логика взаимодействия для ClientPage.xaml
    /// </summary>
    public partial class ClientPage : Window
    {
        public ClientPage()
        {
            InitializeComponent();

            DgridCient.ItemsSource = Plekhankov_DemoEkzEntities.GetContext().Client.ToList();
        }

        private void Backbtn_Click(object sender, RoutedEventArgs e)
        {
            Window BckPage = new MainWindow();
            BckPage.Show();
            Close();
        }
    }
}
