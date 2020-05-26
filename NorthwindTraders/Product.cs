using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NorthwindTraders
{
    public class Product
    {
        public int ProductID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public decimal ListPrice { get; set; }
     
       public decimal StandardCost { get; set;}

        public int ReorderLevel { get; set; }

        public int TargetLevel { get; set; }

        public int supplierID { get; set; }
    }
}