using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcCv.Models.Entity;

namespace MvcCv.Controllers
{
    [AllowAnonymous]
    public class DefaultController : Controller
    {
        // GET: Default
        DbCvEntities db = new DbCvEntities();
        public ActionResult Index()
        {
            var degerler = db.TblAbout.ToList();
            return View(degerler);
        }
        public PartialViewResult SosyalMedya()
        {
            var sosyalmedya = db.TBLSOCIALMEDIA.Where(x => x.Status==true).ToList();

            return PartialView(sosyalmedya);
        }

        public PartialViewResult Deneyim()
        {
            var deneyimler = db.TblExperience.ToList();

            return PartialView(deneyimler);
        }

        public PartialViewResult Egitimlerim()
        {
            var egitimler = db.TblEducation.ToList();

            return PartialView(egitimler);
        }

        public PartialViewResult Yetenekler()
        {
            var yetenek = db.TblTalent.ToList();

            return PartialView(yetenek);
        }

        public PartialViewResult Hobiler()
        {
            var hobi = db.TblHobby.ToList();

            return PartialView(hobi);
        }

        public PartialViewResult Sertifikalar()
        {
            var sertifika = db.TblCertificate.ToList();

            return PartialView(sertifika);
        }
        [HttpGet]

        public PartialViewResult İletisimAlani()
        {
             return PartialView();
        }

        [HttpPost]

        public PartialViewResult İletisimAlani(TblCommunication t)
        {
            t.Date = DateTime.Parse(DateTime.Now.ToLongDateString());
            db.TblCommunication.Add(t);
            db.SaveChanges();
            return PartialView();
        }


    }
}