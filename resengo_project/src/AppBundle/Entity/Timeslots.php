<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Timeslots
 *
 * @ORM\Table(name="timeslots")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\TimeslotsRepository")
 */
class Timeslots
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;
    /**
     * @ORM\Column(name="lastminute_id",type="integer", length=11)
     */
    private $lastminuteid;
    /**
     * @ORM\Column(name="company_id",type="integer", length=11)
     */
    private $companyid;
    /**
     * @ORM\Column(name="start_time",type="string", length=64)
     */
    private $starttime;
    /**
     * @ORM\Column(name="$endtime",type="string", length=64)
     */
    private $endtime;
    /**
     * @ORM\Column(name="description",type="string", length=256)
     */
    private $description;
    /**
     * @ORM\Column(name="cost",type="integer", length=11)
     */
    private $cost;
    /**
     * @ORM\Column(name="integer",type="string", length=11)
     */
    private $originalcost;
    /**
     * @ORM\Column(name="insert_date",type="string", length=64)
     */
    private $insertdate;
    /**
     * @ORM\Column(name="deleted",type="string", length=32)
     */
    private $deleted;
    /**
     * @ORM\Column(name="reservation_url",type="string", length=64)
     */
    private $reservationurl;



    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @return mixed
     */
    public function getLastminuteid()
    {
        return $this->lastminuteid;
    }

    /**
     * @param mixed $lastminuteid
     */
    public function setLastminuteid($lastminuteid)
    {
        $this->lastminuteid = $lastminuteid;
    }

    /**
     * @return mixed
     */
    public function getCompanyid()
    {
        return $this->companyid;
    }

    /**
     * @param mixed $companyid
     */
    public function setCompanyid($companyid)
    {
        $this->companyid = $companyid;
    }

    /**
     * @return mixed
     */
    public function getStarttime()
    {
        return $this->starttime;
    }

    /**
     * @param mixed $starttime
     */
    public function setStarttime($starttime)
    {
        $this->starttime = $starttime;
    }

    /**
     * @return mixed
     */
    public function getEndtime()
    {
        return $this->endtime;
    }

    /**
     * @param mixed $endtime
     */
    public function setEndtime($endtime)
    {
        $this->endtime = $endtime;
    }

    /**
     * @return mixed
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * @param mixed $description
     */
    public function setDescription($description)
    {
        $this->description = $description;
    }

    /**
     * @return mixed
     */
    public function getCost()
    {
        return $this->cost;
    }

    /**
     * @param mixed $cost
     */
    public function setCost($cost)
    {
        $this->cost = $cost;
    }

    /**
     * @return mixed
     */
    public function getOriginalcost()
    {
        return $this->originalcost;
    }

    /**
     * @param mixed $originalcost
     */
    public function setOriginalcost($originalcost)
    {
        $this->originalcost = $originalcost;
    }

    /**
     * @return mixed
     */
    public function getInsertdate()
    {
        return $this->insertdate;
    }

    /**
     * @param mixed $insertdate
     */
    public function setInsertdate($insertdate)
    {
        $this->insertdate = $insertdate;
    }

    /**
     * @return mixed
     */
    public function getDeleted()
    {
        return $this->deleted;
    }

    /**
     * @param mixed $deleted
     */
    public function setDeleted($deleted)
    {
        $this->deleted = $deleted;
    }

    /**
     * @return mixed
     */
    public function getReservationurl()
    {
        return $this->reservationurl;
    }

    /**
     * @param mixed $reservationurl
     */
    public function setReservationurl($reservationurl)
    {
        $this->reservationurl = $reservationurl;
    }


}

