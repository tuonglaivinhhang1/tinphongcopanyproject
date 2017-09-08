namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Slide")]
    public partial class Slide
    {
        public long ID { get; set; }

        [StringLength(500)]
        public string Image { get; set; }

        public int? DisplayOrder { get; set; }

        [StringLength(1000)]
        public string Link { get; set; }

        [Column(TypeName = "ntext")]
        public string Description { get; set; }

        public DateTime? CreatedDate { get; set; }

        public DateTime? ModifiedDate { get; set; }

        public bool? Status { get; set; }
    }
}
