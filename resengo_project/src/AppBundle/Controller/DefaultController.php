<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use AppBundle\Entity\Timeslots;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     * @Route("/resengo", name="homepage")
     */
    public function indexAction(Request $request)
    {
        $mypix = simplexml_load_file('https://www.resengo.com/Code/API/?APIClientID=1020139&Call=RN_LASTMINUTES&APISECRET=NLo4bkphb3dqUWGmE8VUcxqwQowwTlwcrsxFJqg7FpTdJSNWjR&RN_CompanyID=292493');
        foreach ($mypix->RECORD as $p):
            $start_time = $p->StartTime;
            $description = $p->Description;
            $reservation_link = $p->ReservationURL;
            //echo for no reason .. lol -> work in progress
            echo "'" . $reservation_link . "''> start time:" . $start_time . " - desciption: " . $description . " <br>";
            $timeslot = new Timeslots();
            $timeslot->setLastminuteid($p->LastMinuteID);
            $timeslot->setCompanyid($p->CompanyID);
            $timeslot->setStarttime($p->StartTime);
            $timeslot->setEndtime($p->EndTime);
            $timeslot->setDescription($p->Description);
            $timeslot->setCost($p->Cost);
            $timeslot->setOriginalcost($p->OriginalCost);
            $timeslot->setInsertdate($p->InsertDate);
            $timeslot->setDeleted($p->Deleted);
            $timeslot->setReservationurl($p->ReservationURL);
            $em = $this->getDoctrine()->getManager();
            $em->persist($timeslot);
            $em->flush();
        endforeach;
        echo "<br>done all flushed in db<br>";
        return new Response();
    }
}
