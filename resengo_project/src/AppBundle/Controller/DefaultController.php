<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

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
            $start_time=$p->StartTime;
            $description=$p->Description;
            $reservation_link= $p->ReservationURL;
          echo "<a href='".$reservation_link."''> start time:".$start_time." - desciption: ".$description."</a> end <br>";
        endforeach;
        return new Response();
    }
}
