namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Web.Mvc;

    [Table("ProductCategory")]
    public partial class ProductCategory
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ProductCategory()
        {
            Products = new HashSet<Product>();
        }

        public long ID { get; set; }

        [StringLength(1000)]
        [Display(Name = "Tên Loại Cửa")]
        [Required]
        public string Name { get; set; }

        [Column(TypeName = "ntext")]
        [Display(Name = "Mô Tả")]
        [AllowHtml]
        public string Description { get; set; }

        [StringLength(1000)]
        [Display(Name = "Tiêu Đề Trang")]
        public string MetaTitle { get; set; }

        [Display(Name = "Thứ tự")]
        public int? DisplayOrder { get; set; }

        [StringLength(1000)]
        [Display(Name = "Tiêu Đề Seo")]
        public string SeoTitle { get; set; }

        public DateTime? CreatedDate { get; set; }

        public DateTime? ModifiedDate { get; set; }

        [StringLength(1000)]
        [Display(Name = "Thẻ MetaKeyWords")]
        public string MetaKeywords { get; set; }

        [StringLength(1000)]
        [Display(Name = "Thẻ MetaDescriptions")]
        public string MetaDescriptions { get; set; }

        [Display(Name = "Trạng Thái")]
        public bool? Status { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Product> Products { get; set; }
    }
}
