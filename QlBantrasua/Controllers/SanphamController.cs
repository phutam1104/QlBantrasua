using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QlBantrasua.Models;

namespace QlBantrasua.Controllers
{
    public class SanphamController : Controller
    {
        // GET: Sanpham
        QLBantrasua db = new QLBantrasua();
        public ActionResult Trasuapartial()
        {
            var ip = db.Sanpham.Where(n => n.Maloai == 1).Take(4).ToList();
            return PartialView(ip);
        }
        public ActionResult Trapartial()
        {
            var ip = db.Sanpham.Where(n => n.Maloai == 2).Take(4).ToList();
            return PartialView(ip);
        }
        public ActionResult xemchitiet(int Masp = 0)
        {
            var chitiet = db.Sanpham.SingleOrDefault(n => n.Masp == Masp);
            if (chitiet == null)    
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(chitiet);
        }
    }
}