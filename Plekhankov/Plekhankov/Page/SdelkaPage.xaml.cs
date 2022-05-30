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
    /// Логика взаимодействия для SdelkaPage.xaml
    /// </summary>
    public partial class SdelkaPage : Window
    {
        public SdelkaPage()
        {
            InitializeComponent();

            DgridSdelka.ItemsSource = Plekhankov_DemoEkzEntities.GetContext().Sdelka.ToList();
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            Window Back = new MainWindow();
            Back.Show();
            Close();
        }

        private void AddSdelka_Click(object sender, RoutedEventArgs e)
        {
            Window addSdelka = new AddEditSdelkaPage();
            addSdelka.Show();
            Close();
        }

        private void Window_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if(Visibility == Visibility.Visible)
            {
                Plekhankov_DemoEkzEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(p => p.Reload());
                DgridSdelka.ItemsSource = Plekhankov_DemoEkzEntities.GetContext().Sdelka.ToList();
            }
        }
    }
}
