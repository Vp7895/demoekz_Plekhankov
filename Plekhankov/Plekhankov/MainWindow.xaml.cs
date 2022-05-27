using Plekhankov.Page;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Plekhankov
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void postavchikiBtn_Click(object sender, RoutedEventArgs e)
        {
            Window PostPage = new PostachikPage();
            PostPage.Show();
            Close();
        }

        private void ModelAuto_Click(object sender, RoutedEventArgs e)
        {
            Window AutoPage = new ModelAutoPage();
            AutoPage.Show();
            Close();
        }

        private void Clientbtn_Click(object sender, RoutedEventArgs e)
        {
            Window ClientBtn = new ClientPage();
            ClientBtn.Show();
            Close();
        }

        private void SdelkaBtn_Click(object sender, RoutedEventArgs e)
        {
            Window SdelkaWndw = new SdelkaPage();
            SdelkaWndw.Show();
            Close();
        }

        private void PriceCurantbtn_Click(object sender, RoutedEventArgs e)
        {
            Window PriceCurant = new PriceCurantPage();
            PriceCurant.Show();
            Close();
        }

        private void Nacenkibtn_Click(object sender, RoutedEventArgs e)
        {
            Window Nacenki = new NacenkiPage();
            Nacenki.Show();
            Close();
        }
    }
}
