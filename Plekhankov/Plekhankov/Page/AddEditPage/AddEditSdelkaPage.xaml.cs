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

namespace Plekhankov.Page.AddEditPage
{
    /// <summary>
    /// Логика взаимодействия для AddEditSdelkaPage.xaml
    /// </summary>
    public partial class AddEditSdelkaPage : Window
    {
        private Sdelka _currentSdelka = new Sdelka();

        public AddEditSdelkaPage()
        {
            InitializeComponent();

            DataContext = _currentSdelka;

            cmbBoxClietn.ItemsSource = Plekhankov_DemoEkzEntities.GetContext().Client.ToList();
            cmbBoxModel.ItemsSource = Plekhankov_DemoEkzEntities.GetContext().Modeli_auto.ToList();

        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (_currentSdelka.Client == null)
                errors.AppendLine("Выберите клиента из списка");
            if (_currentSdelka.Modeli_auto == null)
                errors.AppendLine("Выберите модель авто из списка");

            if(errors.Length>0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }

            if (_currentSdelka.id == 0)
                Plekhankov_DemoEkzEntities.GetContext().Sdelka.Add(_currentSdelka);


            try
            {
                Plekhankov_DemoEkzEntities.GetContext().SaveChanges();
                MessageBox.Show("информация успешно сохранена!");

                Window Back = new SdelkaPage();
                Back.Show();
                Close();

            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }

        }
    }
}
