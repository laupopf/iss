<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * Articol
 *
 * @ORM\Table(name="articol")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\ArticolRepository")
 */
class Articol
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
     * @var string
     *
     * @ORM\Column(name="autor", type="string", length=200)
     */
    private $autor;

   
    /**
     * @var string
     *
     * @ORM\Column(name="titlu", type="string", length=255)
     */
    private $titlu;

    /**
     * @var string
     *
     * @ORM\Column(name="domeniu", type="string", length=200, nullable=true)
     */
    private $domeniu;

    /**
     * @var string
     *
     * @ORM\Column(name="keywords", type="string", length=200, nullable=true)
     */
    private $keywords;
    
    /**
     * @var string
     *
     * @ORM\Column(name="brochure", type="string", length=200, nullable=true)
     */
    private $brochure;

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
     * Set nume
     *
     * @param string $autor
     *
     * @return Cereri
     */
    public function setAutor($autor)
    {
        $this->autor = $autor;

        return $this;
    }

    /**
     * Get autor
     *
     * @return string
     */
    public function getAutor()
    {
        return $this->autor;
    }

    /**
     * Set titlu
     *
     * @param integer $cnp
     *
     * @return Cereri
     */
    public function setTitlu($titlu)
    {
        $this->titlu = $titlu;

        return $this;
    }

    /**
     * Get titlu
     *
     * @return int
     */
    public function getTitlu()
    {
        return $this->titlu;
    }

    /**
     * Set domeniu
     *
     * @param string $domeniu
     *
     * @return Articol
     */
    public function setDomeniu($domeniu)
    {
        $this->domeniu = $domeniu;

        return $this;
    }

    /**
     * Get domeniu
     *
     * @return string
     */
    public function getDomeniu()
    {
        return $this->domeniu;
    }
    
     /**
     * Set keywords
     *
     * @param string $keywords
     *
     * @return Articol
     */
    public function setKeywords($keywords)
    {
        $this->keywords = $keywords;

        return $this;
    }

    /**
     * Get keywords
     *
     * @return string
     */
    public function getKeywords()
    {
        return $this->keywords;
    }
    
    
    
    /**
     * 
     *
     * @Assert\NotBlank(message="Please, upload the product brochure as a PDF file.")
     * @Assert\File(mimeTypes={ "application/pdf" })
     */
    

    public function getBrochure()
    {
        return $this->brochure;
    }

    
    public function setBrochure($brochure)
    {
        $this->brochure = $brochure;

        return $this;
    }
}

