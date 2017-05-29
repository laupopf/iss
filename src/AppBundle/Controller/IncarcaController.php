<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use AppBundle\Entity\Articol;
use AppBundle\Form\ArticolType;
use Symfony\Component\Form\Extension\Core\Type\FileType;

class IncarcaController extends Controller
{
    /**
     * @Route("/incarcadoc", name="incarcadoc")
     */
    public function incarcaAction(Request $request)
    {
        $articol = new Articol();
        $form = $this->createForm(ArticolType::class, $articol);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            // $file stores the uploaded PDF file
            /** @var Symfony\Component\HttpFoundation\File\UploadedFile $file */
            $file = $articol->getBrochure();

            // Generate a unique name for the file before saving it
            $fileName = md5(uniqid()).'.'.$file->guessExtension();

            // Move the file to the directory where brochures are stored
            $file->move(
                $this->getParameter('brochures_directory'),
                $fileName
            );

            // Update the 'brochure' property to store the PDF file name
            // instead of its contents
            $articol->setBrochure($fileName);
            $session = $request->getSession();
            $user = $session->get('logged');
            $em = $this->getDoctrine()->getManager();
            $articol->setAutor($user);
            $em->persist($articol);
            $em->flush();
            
            // ... persist the $product variable or any other work

            return $this->redirect($this->generateUrl('articol'));
        }

        return $this->render('auth/incarca.html.twig', array(
            'form' => $form->createView(),
        ));
    }
}