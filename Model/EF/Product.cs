namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Web.Mvc;

    [Table("Product")]
    public partial class Product
    {
        public long ID { get; set; }

        [StringLength(1000)]
        [Display(Name = "Tên Sản Phẩm")]
        [Required]
        public string Name { get; set; }

        [StringLength(1000)]
        [Display(Name = "Thẻ Tiêu Đề")]
        [Required]
        public string MetaTitle { get; set; }

        [StringLength(1000)]
        [Display(Name = "Tiêu Đề Cho SEO")]
        public string SeoTitle { get; set; }

        [StringLength(20)]
        [Display(Name = "Mã Sản Phẩm")]
        public string Code { get; set; }

        [StringLength(1000)]
        [Display(Name = "Mô Tả Sơ Lược Sản Phẩm")]
        [Required]
        [AllowHtml]
        public string Description { get; set; }

        [StringLength(500)]
        [Display(Name = "Hình Ảnh")]
        [Required]
        public string Image { get; set; }

        [Column(TypeName = "xml")]
        public string MoreImages { get; set; }

        [Display(Name = "Giá")]
        public decimal? Price { get; set; }

        [Display(Name = "Giá KM")]
        public decimal? PromotionPrice { get; set; }

        [Display(Name = "Loại SP")]
        public long? CategoryID { get; set; }


        [Column(TypeName = "ntext")]
        [AllowHtml]
        [Display(Name = "Chi Tiết")]
        [Required]
        public string ProductDetail { get; set; }

        [Display(Name = "Số Tháng BH")]
        public int? Waranty { get; set; }

        public DateTime? CreatedDate { get; set; }

        public DateTime? ModifiedDate { get; set; }

        [StringLength(1000)]
        [Display(Name = "Thẻ MetaKeys")]
        public string MetaKeywords { get; set; }


        [StringLength(1000)]
        [Display(Name = "Thẻ MetaDes")]
        public string MetaDescriptions { get; set; }

        [Display(Name = "Trạng Thái")]
        [Required]
        public bool? Status { get; set; }

        [Display(Name = "Lượt Views")]
        [Required]
        public long? ViewCount { get; set; }

        public virtual ProductCategory ProductCategory { get; set; }
    }
}
