<?php
namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Session\Session;
use Symfony\Component\Form\Extension\Core\Type\ButtonType;
use AppBundle\Entity\User;
use AppBundle\Entity\Alert;
use AppBundle\Entity\FPDF;
use AppBundle\Entity\Articol;


class ActionController extends Controller
{
    /**
     * @Route("/articol", name="articol")
     */
    public function articolAction(Request $request)
    {
        $session = $request->getSession();
        $user = $session->get('logged');
       
        
        
        $conn = $this->get('database_connection');
        $articole= $conn->fetchAll('select * from articol');
        return $this->render('functions/articol.html.twig', array('character' => $articole ,'user' => $user));
    }
    
     
    
    /**
     * @Route("/incarca", name="incarca")
     */
    public function IncarcaAction(Request $request) {
       
        $em = $this->getDoctrine()->getManager();
        $alert_repo = $em->getRepository('AppBundle:Articol');
        
    
        //
       
        
        $info = $result;
       // var_dump($result);
        return $this->render('functions/alert.html.twig', array('character' => $info));
    }
    
    /**
     * @Route("/eval", name="eval")
     */
    public function EvalAction(Request $request) {
        $session = $request->getSession();
        $user = $session->get('logged');
        
        
        
        $em = $this->getDoctrine()->getManager();
        $msg_alert = $request->request->get('eval');
        $msg_titlu = $request->request->get('titlu');
        
        $conn = $this->get('database_connection');
        
        $conn->insert('evaluari', array('nota' => $msg_alert , 'titlu' => $msg_titlu, 'evaluator' => $user));
      
      
        
        return $this->redirect($this->generateUrl('articol'));
    }
    
    /**
     * @Route("/solvCerere", name="solvCerere")
     */
    public function solvCerereAction(Request $request)
    {
        
      
    }
}

