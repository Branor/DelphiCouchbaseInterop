using DelphiCouchbaseInterop;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestApp
{
    class Program
    {
        static void Main(string[] args)
        {
            ICouchbaseFacade cb = new CouchbaseFacade();
            cb.Upsert("_test", "hello");
            Console.WriteLine(cb.Get("_test"));
        }
    }
}
