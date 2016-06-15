using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


 public  class DateSearch
    {
        public  string strfrom;

    
        string today;
        string month;

        public void Dateser(DateTime searchdt)
        {

            if (searchdt.Month.ToString().Length == 1 && searchdt.Day.ToString().Length == 1)
            {
                today = "0" + Convert.ToString(searchdt.Day);
                month = "0" + Convert.ToString(searchdt.Month);
                strfrom  = Convert.ToString(searchdt.Year) + month + today;
            }
            else
                if (searchdt.Month.ToString().Length == 1)
                {
                    month = "0" + Convert.ToString(searchdt.Month);
                    strfrom = Convert.ToString(searchdt.Year) + month + Convert.ToString(searchdt.Day); today = "0" + Convert.ToString(searchdt.Day);
                }
                else
                    if (searchdt.Day.ToString().Length == 1)
                    {
                        today = "0" + Convert.ToString(searchdt.Day);
                        strfrom = Convert.ToString(searchdt.Year) + Convert.ToString(searchdt.Month) + today;

                    }
                    else
                    {
                        strfrom = Convert.ToString(searchdt.Year) + Convert.ToString(searchdt.Month) + Convert.ToString(searchdt.Day);
                    }
        }
    }

