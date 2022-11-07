using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcCv.Models.Entity;
using MvcCv.Repositories;

namespace MvcCv.Controllers
{
    public class HobiController : Controller
    {
        // GET: Hobi
        GenericRepository<TblHobby> repo = new GenericRepository<TblHobby>();
        [HttpGet]
        public ActionResult Index()
        {
            var hobiler = repo.List();
            return View(hobiler);
            
        }
        [HttpPost]
        public ActionResult Index(TblHobby p)
        {
            var t = repo.Find(x => x.ID == 2);
            t.Explanation1 = p.Explanation1;
            t.Explanation2 = p.Explanation2;
            repo.TUpdate(t);
            return RedirectToAction("Index");

        }
    }
}