<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    /**
	 * @Route("/", name="homepage")
     * @Route("/resengo", name="homepage")
     */
    public function indexAction(Request $request)
    {
       return "hello";
    }
}
