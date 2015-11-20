using Couchbase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Couchbase.Core;
using System.Runtime.InteropServices;

namespace DelphiCouchbaseInterop
{
    [ComVisible(true)]
    [Guid("CC843972-BF02-4453-9C39-6B36E2E1CDFA")]
    public interface ICouchbaseFacade
    {
        object Get(string key);
        void Upsert(string key, object value);
    }

    [ComVisible(true)]
    [ClassInterface(ClassInterfaceType.None)]
    [Guid("961E66E7-8DF5-4366-AAF6-F84037D26B05")]
    public class CouchbaseFacade : ICouchbaseFacade
    {
        private IBucket _bucket;
        private Cluster _cluster;

        public CouchbaseFacade()
        {
            _cluster = new Cluster();
            _bucket = _cluster.OpenBucket("default");
        }

        public object Get(string key)
        {
            return _bucket.Get<object>(key).Value;
        }

        public void Upsert(string key, object value)
        {
            _bucket.Upsert(key, value);
        }
    }
}
