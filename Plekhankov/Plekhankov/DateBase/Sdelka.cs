//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Plekhankov.DateBase
{
    using System;
    using System.Collections.Generic;
    
    public partial class Sdelka
    {
        public int id { get; set; }
        public int id_client { get; set; }
        public int id_model { get; set; }
    
        public virtual Client Client { get; set; }
        public virtual Modeli_auto Modeli_auto { get; set; }
    }
}