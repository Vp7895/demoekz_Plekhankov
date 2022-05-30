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
    /// Логика взаимодействия для AddEditNacenkiPage.xaml
    /// </summary>
    public partial class AddEditNacenkiPage : Window
    {

        private nacenki _currentNacenki = new nacenki();

        public AddEditNacenkiPage()
        {
            InitializeComponent();

            DataContext = _currentNacenki;
        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrWhiteSpace(_currentNacenki.type))
                errors.AppendLine("Введите тип наценки!");
            if (string.IsNullOrWhiteSpace(_currentNacenki.znachenie))
                errors.AppendLine("Введите значение наценки!");

            if(errors.Length>0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }

            if (_currentNacenki.id == 0)
                Plekhankov_DemoEkzEntities.GetContext().nacenki.Add(_currentNacenki);

            try
            {
                Plekhankov_DemoEkzEntities.GetContext().SaveChanges();
                MessageBox.Show("Информация успешно сохранена!");

                Window Back = new NacenkiPage();
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
