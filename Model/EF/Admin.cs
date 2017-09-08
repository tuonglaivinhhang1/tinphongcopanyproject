namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Admin")]
    public partial class Admin
    {
        public long ID { get; set; }

        [StringLength(200)]
        public string Email { get; set; }

        [StringLength(500)]
        public string Password { get; set; }

        public bool? Status { get; set; }
    }
}
