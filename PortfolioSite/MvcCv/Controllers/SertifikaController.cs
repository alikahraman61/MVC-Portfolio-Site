using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcCv.Models.Entity;
using MvcCv.Repositories;

namespace MvcCv.Controllers
{
    public class SertifikaController : Controller
    {
        // GET: Sertifika

        GenericRepository<TblCertificate> repo = new GenericRepository<TblCertificate>();
        public ActionResult Index()
        {

            var sertifika = repo.List();
            return View(sertifika);
        }

        [HttpGet]
        public ActionResult SertificaGetir(int id)
        {
            var sertifica = repo.Find(x => x.ID == id);
            ViewBag.d = id;
            return View(sertifica);

        }
        [HttpPost]
        public ActionResult SertificaGetir(TblCertificate t)
        {
            var sertifica = repo.Find(x => x.ID == t.ID);
            sertifica.Explanation = t.Explanation;
            repo.TUpdate(sertifica);
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult YeniSertifika()
        {
            return View();
        }
        [HttpPost]
        public ActionResult YeniSertifika(TblCertificate p)
        {
            repo.TAdd(p);
            return RedirectToAction("Index");
        }
        public ActionResult SertifikaSil(int id)
        {
            var sertifika = repo.Find(x => x.ID == id);
            repo.Tdelete(sertifika);
            return  RedirectToAction("Index");
        }
    }
}