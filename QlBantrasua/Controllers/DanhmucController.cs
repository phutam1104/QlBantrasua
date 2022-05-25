using QlBantrasua.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QlBantrasua.Models;

namespace QlBantrasua.Controllers
{
    public class DanhmucController : Controller
    {
        // GET: Danhmuc
        QLBantrasua db=new QLBantrasua();
        // GET: Danhmuc
        public ActionResult DanhmucPartial()
        {
            var danhmuc = db.Loai.ToList();
            return PartialView(danhmuc);
        }
    }
}