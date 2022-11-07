using MvcCv.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcCv.Models.Entity;

namespace MvcCv.Controllers
{
    
    public class EgitimController : Controller
    {
        // GET: Egitim
        GenericRepository<TblEducation> repo = new GenericRepository<TblEducation>();
        public ActionResult Index()
        {

            var egitim = repo.List();
            
            return View(egitim);
        }

        [HttpGet]
        public ActionResult EgitimEkle()
        {
            return View();
        }
        [HttpPost]
        public ActionResult EgitimEkle(TblEducation p)
        {
            if (!ModelState.IsValid)
            {
                return View("EgitimEkle");
            }
            repo.TAdd(p);
            return RedirectToAction("Index");
        }
        public ActionResult EgitimSil(int id)
        {
            var egitim = repo.Find(x => x.ID == id);
            repo.Tdelete(egitim);
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult EgitimDuzenle(int id)
        {
            var egitim = repo.Find(x => x.ID == id);
            return View(egitim);
        }
        [HttpPost]
        public ActionResult EgitimDuzenle(TblEducation t)
        {
            if (!ModelState.IsValid)
            {
                return View("EgitimDuzenle");
            }
            var egitim = repo.Find(x => x.ID == t.ID);
            egitim.Title = t.Title;
            egitim.Subtitle1 = t.Subtitle1;
            egitim.Subtitle2 = t.Subtitle2;
            egitim.GPA = t.GPA;
            egitim.Date = t.Date;
            repo.TUpdate(egitim);
            return RedirectToAction("Index");

        }
    }
}