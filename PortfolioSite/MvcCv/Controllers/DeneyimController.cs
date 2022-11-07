using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcCv.Models.Entity;
using MvcCv.Repositories;
namespace MvcCv.Controllers
{
    public class DeneyimController : Controller
    {
        // GET: Deneyim
        DeneyimRepository repo = new DeneyimRepository();
        public ActionResult Index()
        {

            var degerler = repo.List();
            return View(degerler);
        }
        [HttpGet]
        public ActionResult DeneyimEkle()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DeneyimEkle(TblExperience p)
        {
            repo.TAdd(p);
            return RedirectToAction("Index");
        }
        public ActionResult DeneyimSil(int id)
        {
            TblExperience t = repo.Find(x => x.ID == id);
            repo.Tdelete(t);
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult DeneyimGetir(int id)
        {
            TblExperience t = repo.Find(x => x.ID == id);
            return View(t);

        }
        [HttpPost]
        public ActionResult DeneyimGetir(TblExperience p)
        {
            TblExperience t = repo.Find(x => x.ID == p.ID);
            t.Title = p.Title;
            t.Subtitle = p.Subtitle;
            t.Date = p.Date;
            t.Explanation = p.Explanation;
            repo.TUpdate(t);
            return RedirectToAction("Index");

        }
    }
}