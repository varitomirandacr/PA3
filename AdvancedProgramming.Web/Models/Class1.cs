using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Web;

namespace AdvancedProgramming.Web.Models
{
    public class Cami : Varo
    {
        public string Cami1 = "The grandchild";
    }

    public class Varo : Mil
    {
        public string Varo1 = "The son";
    }

    public class Mil : Vicky
    {
        public string Mil1 = "The father";
    }

    public class Vicky : PapaNibal
    {
        public string Vicky1 = "The gremma";
    }

    public class PapaNibal 
    {
        public string Papanibal = "The oldest one";
    }

    public class Test
    {
        public void Test1()
        {
            var cami = new Cami();
            Console.WriteLine(cami.Cami1);
            Console.WriteLine(cami.Varo1);
            Console.WriteLine(cami.Mil1);
            Console.WriteLine(cami.Vicky1);
            Console.WriteLine(cami.Papanibal);
        }

        public void Test2()
        {
            var items1 = new List<string> { "one", "two", "three" };
            IEnumerable<string> items2 = items1.Where(i => i.Length > 3);

            SortedList<int, string> sortedList = new SortedList<int, string>();
            ReadOnlyCollection<string> readOnlyCollection = items1.AsReadOnly();


        }


    }

}