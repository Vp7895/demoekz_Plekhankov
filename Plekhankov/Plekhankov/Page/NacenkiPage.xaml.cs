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
using Plekhankov.Page.AddEditPage;

namespace Plekhankov.Page
{
    /// <summary>
    /// Логика взаимодействия для NacenkiPage.xaml
    /// </summary>
    public partial class NacenkiPage : Window
    {
        public NacenkiPage()
        {
            InitializeComponent();

           /* DGridNacenki.ItemsSource = Plekhankov_DemoEkzEntities.GetContext().nacenki.ToList(); */
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            Window Back = new MainWindow();
            Back.Show();
            Close();
        }

        private void Window_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                Plekhankov_DemoEkzEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                DGridNacenki.ItemsSource = Plekhankov_DemoEkzEntities.GetContext().nacenki.ToList();
            }
        }

        private void AddNacenkiBtn_Click(object sender, RoutedEventArgs e)
        {
            Window AddPage = new AddEditNacenkiPage();
            AddPage.Show();
            Close();
        }
    }
}
