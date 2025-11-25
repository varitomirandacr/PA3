using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdvancedProgramming.Models
{
    public class TransportationDevice
    {
        // primitive
        // string, bool, int, float
        public int Id { get; set; }
        public long Id2;
        public double id3;
        public float id4;
        public decimal id5;

        private string lastname;

        protected string desc;

        public Int16 id6;
        public Int32 id7;
        public Int64 id8;
        public Decimal id9;
        public Double id10;

        public string name;
        public String description;

        public string CompareDecimals()
        {
            var decimal1 = 100M;
            var decimal2 = 200M;

            decimal1.CompareTo(decimal2);

            return "";
        }

        protected int CompareDecimals2()
        {
            var decimal1 = 100M;
            var decimal2 = 200M;

            decimal1.CompareTo(decimal2);

            return 1;
        }

        private void CompareDecimals3()
        {
            var decimal1 = 100M;
            var decimal2 = 200M;

            decimal1.CompareTo(decimal2);
        }

        public TransportationDevice GetTransportationDevice()
        {
            return new TransportationDevice
            {
                Id = 1
            };
         //   return default(TransportationDevice);
        }

    }
}
