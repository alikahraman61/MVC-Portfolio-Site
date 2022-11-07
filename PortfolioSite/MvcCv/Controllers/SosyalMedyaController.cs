using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcCv.Models.Entity;
using MvcCv.Repositories;

namespace MvcCv.Controllers
{
    public class SosyalMedyaController : Controller
    {
        // GET: SosyalMedya
        GenericRepository<TBLSOCIALMEDIA> repo = new GenericRepository<TBLSOCIALMEDIA>();
      
        public ActionResult Index()
        {
            var veriler = repo.List();
            return View(veriler);
        }
        [HttpGet]
        public ActionResult Ekle()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Ekle(TBLSOCIALMEDIA p)
        {
            repo.TAdd(p);
            return RedirectToAction("Index");        
        }
        [HttpGet]
        public ActionResult SayfaGetir(int id)
        {
            var hesap = repo.Find(x => x.ID == id);
            return View(hesap);

        }
        [HttpPost]
        public ActionResult SayfaGetir(TBLSOCIALMEDIA p)
        {
            var hesap = repo.Find(x => x.ID == p.ID);
            hesap.Name = p.Name;
            hesap.Status = true;
            hesap.Link = p.Link;
            hesap.İcon = p.İcon;
            repo.TUpdate(hesap);
            return RedirectToAction("Index");

        }
        public ActionResult Sil(int id)
        {
            var hesap = repo.Find(x => x.ID == id);
            hesap.Status = false;
            repo.TUpdate(hesap);
            return RedirectToAction("Index");

        }
    }
}