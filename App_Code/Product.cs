
public class Product
{
        private string _caption;
        private long  _id;
        public string description { get { return _caption; } }
        public long  PhotoID { get { return _id; } }

        public Product(long  photoid,string caption)
        {
            _caption = caption;
            _id = photoid;
        }

   
}
