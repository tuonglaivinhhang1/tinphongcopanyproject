namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Menu")]
    public partial class Menu
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Menu()
        {
            Menu1 = new HashSet<Menu>();
        }

        public long ID { get; set; }

        [StringLength(500)]
        public string Name { get; set; }

        [StringLength(1000)]
        public string Link { get; set; }

        public int? DisplayOrder { get; set; }

        [StringLength(50)]
        public string Target { get; set; }

        public long? TypeID { get; set; }

        public long? ParentID { get; set; }

        public bool? Status { get; set; }

        public long? ProductID { get; set; }

        public virtual MenuType MenuType { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Menu> Menu1 { get; set; }

        public virtual Menu Menu2 { get; set; }
    }
}
