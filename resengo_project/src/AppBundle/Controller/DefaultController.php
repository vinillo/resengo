<?php
namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use AppBundle\Entity\Timeslots;

class DefaultController extends Controller
{
    private $xml_url;

    /**
     * @Route("/")
     * @Route("/resengo")
     */

    public function indexAction(Request $request)
    {   //config
        $this->setXmlUrl("https://www.resengo.com/Code/API/?APIClientID=1020139&Call=RN_LASTMINUTES&APISECRET=NLo4bkphb3dqUWGmE8VUcxqwQowwTlwcrsxFJqg7FpTdJSNWjR&RN_CompanyID=292493");
        //end config

        if (!$this->checkIfXmlExist()):
            throw $this->createNotFoundException(
                'Fatal Error: xml not found '
            );
        else:
            $xml_load = simplexml_load_file($this->getXmlUrl());


            foreach ($xml_load->RECORD as $p):
                //awesomesauce valid xml file check
                if (!isset($p->LastMinuteID) || !isset($p->CompanyID) || !isset($p->StartTime) || !isset($p->EndTime) || !isset($p->Description) || !isset($p->Cost) || !isset($p->OriginalCost) || !isset($p->InsertDate) || !isset($p->Deleted) || !isset($p->ReservationURL)):
                    throw $this->createNotFoundException(
                        'xml file is not valid format at id: ' . $p->LastMinuteID
                    );
                endif;
                if (!$this->checkIfTimesloExist($p->LastMinuteID)):
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
                    if ($p->Deleted == "True"):
                        $timeslot->setBoolVerwijderd(1);
                        echo "SNEAKY! Looks like " . $p->LastMinuteID . " is marked as deleted. updating setBoolVerwijderd(1) before is lays eggs.<br>";
                    else:
                        $timeslot->setBoolVerwijderd(0);
                    endif;
                    if (strtotime($p->StartTime) < time()):
                        $timeslot->setBoolVerwijderd(0);
                        echo "You shall not pass! Seems like StartTime is history. LastMinuteID" . $p->LastMinuteID . " will be marked as deleted. updating setBoolVerwijderd(1)<br>";
                    endif;
                    $em = $this->getDoctrine()->getManager();
                    $em->persist($timeslot);
                    $em->flush();
                    echo "Excellent Work! LastMinuteID: " . $p->LastMinuteID . " added.. Since it's non-existent in db<br>";
                else:
                    if ($this->checkIfTimeslotChangedFor($p->LastMinuteID, $p->InsertDate)):
                        $em = $this->getDoctrine()->getManager();
                        $repo = $em->getRepository('AppBundle:Timeslots');
                        $timeslot = $repo->findOneBy(array('lastminuteid' => $p->LastMinuteID));

                        if (!$timeslot) {
                            throw $this->createNotFoundException(
                                'Argh! No Timeslot found for LastMinuteID: ' . $p->LastMinuteID
                            );
                        }
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
                        $em->flush();
                        echo "Brilliant! Looks like LastMinuteID: " . $p->LastMinuteID . " is changed (insertdate is diffrent). updating values..<br>";
                    else:
                        echo "Oh! Looks like LastMinuteID: " . $p->LastMinuteID . " already exist. Also no changes found! skipping..<br>";
                    endif;
                endif;
            endforeach;
            echo "<br>done -  flushed in db<br>";
            return new Response();
        endif;
    }

    public function checkIfTimeslotChangedFor($xml_lastmin_id, $xml_insert_date)
    {
        //assuming InsertDate is date when timeslot is added
        $repository = $this->getDoctrine()->getRepository('AppBundle:Timeslots');
        $query = $repository->createQueryBuilder('t')
            ->select('t.lastminuteid,t.insertdate')
            ->where('t.lastminuteid = :lastminute_id')
            ->setParameters(['lastminute_id' => $xml_lastmin_id])
            ->getQuery();
        $result = $query->getScalarResult();
        if ($result[0]['insertdate'] != $xml_insert_date):
            return true; //it changed
        else:
            return false; //it didn't change
        endif;
    }

    public function checkIfTimesloExist($id = -1)
    {
        $repository = $this->getDoctrine()->getRepository('AppBundle:Timeslots');
        $query = $repository->createQueryBuilder('t')
            ->select('count(t.lastminuteid)')
            ->where('t.lastminuteid = :lastminute_id')
            ->setParameters(['lastminute_id' => $id])
            ->getQuery();
        $result = $query->getSingleScalarResult();
        if ($result >= 1):
            return true; //exist
        else:
            return false; //doesn't exist
        endif;
    }

    public function checkIfXmlExist()
    {
        if (@file_get_contents($this->getXmlUrl())): return true;
            return false;
        endif;
        if (@file_get_contents($this->getXmlUrl())): return true;
        else: return false;
        endif;
    }

    /**
     * @param string $xml_url
     */
    public function setXmlUrl($xml_url)
    {
        $this->xml_url = $xml_url;
    }

    /**
     * @return string
     */
    public function getXmlUrl()
    {
        return $this->xml_url;
    }

}
