namespace baitapcuoiki.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Runtime.InteropServices;

    [Table("Product")]
    public partial class Product
    {
        [StringLength(50)]
        [Display(Name = "Mã Sản Phẩm")]
        public string ID { get; set; }

        [Display(Name ="Tên Sản Phẩm")]
        [StringLength(250)]
        public string Name { get; set; }


        [Display(Name = "Số Lượng")]
        public decimal? UnitCost { get; set; }


        [Display(Name = "Đơn Giá")]
        public int? Quantity { get; set; }

        [Display(Name = "Hình Ảnh")]
        [StringLength(250)]
        public string Image { get; set; }

        [StringLength(250)]
        [Display(Name = "Mô Tả")]
        public string Description { get; set; }

        [StringLength(50)]
        [Display(Name = "Trạng Thái")]
        public string Status { get; set; }

        [StringLength(50)]
        [Display(Name = "Loại Sản Phẩm")]
        public string CategoryID { get; set; }

        public virtual Category Category { get; set; }
    }
}
