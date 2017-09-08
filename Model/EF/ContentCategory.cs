namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ContentCategory")]
    public partial class ContentCategory
    {
        public long ID { get; set; }

        [StringLength(1000)]
        public string Name { get; set; }

        [StringLength(1000)]
        public string Description { get; set; }

        [StringLength(1000)]
        public string MetaTitle { get; set; }

        public int? DisplayOrder { get; set; }

        [StringLength(1000)]
        public string SeoTitle { get; set; }

        public DateTime? CreatedDate { get; set; }

        public DateTime? ModifiedDate { get; set; }

        [StringLength(1000)]
        public string MetaKeywords { get; set; }

        [StringLength(1000)]
        public string MetaDescriptions { get; set; }

        public bool? Status { get; set; }
    }
}
