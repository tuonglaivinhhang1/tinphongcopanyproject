namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Web.Mvc;

    [Table("Content")]
    public partial class Content
    {
        public long ID { get; set; }

        [StringLength(1000)]
        public string Name { get; set; }

        [StringLength(1000)]
        public string MetaTitle { get; set; }

        [StringLength(1000)]
        public string SeoTitle { get; set; }

        [StringLength(1000)]
        public string Description { get; set; }

        [StringLength(500)]
        public string Image { get; set; }

        public long? CategoryID { get; set; }

        [Column(TypeName = "ntext")]
        [AllowHtml]
        public string Detail { get; set; }

        public DateTime? CreatedDate { get; set; }

        public DateTime? ModifiedDate { get; set; }

        [StringLength(1000)]
        public string MetaKeywords { get; set; }

        [StringLength(1000)]
        public string MetaDescriptions { get; set; }

        public long? ViewCount { get; set; }

        public DateTime? TopHot { get; set; }

        [StringLength(1000)]
        public string Tags { get; set; }

        public bool? Status { get; set; }
    }
}
