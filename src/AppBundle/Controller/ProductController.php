<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\JsonResponse;

use AppBundle\Entity\Product;
use Doctrine\ORM\EntityManagerInterface;


/**
 * Product controller.
 *
 * @Route("/")
 */
class ProductController extends Controller
{
 
	
	/**
     * @Route("/", name="viewproducts")
     */
    public function viewproductsAction(Request $request)
    {
		if($request->request->get('rowperpage')){
			$rowperpage = $request->request->get('rowperpage');
		}else{
			$rowperpage=4;
		}
		$products = $this->getDoctrine()
			->getRepository('AppBundle:Product')
			->findbyproducttype('all',$rowperpage);		

		return $this->render('product/viewproducts.html.twig', array (
			'products' => $products,
			'rowperpage' => $rowperpage,
			'product_type' => 'all'
		));
    }	
	
	/**
     * @Route("/ajax_request", name="getproducts")
     */
    public function getproductsAction(Request $request)
    {
		if($request->request->get('product_type')){
			$product_type = $request->request->get('product_type');
			$rowperpage = $request->request->get('rowperpage');
			
			$em = $this->getDoctrine()->getManager();
			$emProduct = $em->getRepository('AppBundle:Product');
			$products = $emProduct->findbyproducttype($product_type, $rowperpage);
			
			return $this->render('product/productcontainer.html.twig', array (
				'products' => $products,
				'rowperpage' => $rowperpage,
				'product_type' => $product_type
			));
		}
    }	
}