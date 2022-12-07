<?php

namespace App\Http\Controllers\Frontend;

use App\Banner;
use App\Http\Controllers\Controller;
use App\Pricing;
use App\Product;
use App\Staticdata;
use App\StaticDatum;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use TCG\Voyager\Models\Page;
use TCG\Voyager\Models\Post;
use TCG\Voyager\Models\Category;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Application|Factory|View|Response
     */
    public function index()
    {
        $category1 = Category::where('slug', 'bai-viet')->first();
        $category2 = Category::where('slug', 'goi-cuoc')->first();
        $banners= Banner::where('type', 'banner')->get();
        $aboutHome = Page::where(['slug' => 'about-home', 'status' => 'ACTIVE'])->first();
        $achievement = Page::where(['slug' => 'thanh-tuu', 'status' => 'ACTIVE'])->first();
        $page = Page::where(['slug' => 'home', 'status' => 'ACTIVE'])->first();
        $aboutUs = Page::where(['slug' => 'about-us-home-page', 'status' => 'ACTIVE'])->first();
        $posts  =   Post::where('category_id', $category1->id)->where('status', 'PUBLISHED')->latest()->limit(3)->get();
        $post  =   Post::where('category_id', $category2->id)->where('status', 'PUBLISHED')->latest()->limit(3)->get();
        $products= Product::where('status', 'ACTIVE')->limit(4)->get();
        $services= Staticdata::where(['type' => 'ho-tro', 'status' => 'ACTIVE'])->limit(3)->get();
        $procedures = Staticdata::where(['type' => 'quy-trinh', 'status' => 'ACTIVE'])->get();
        $partners = Staticdata::where(['type' => 'doi-tac', 'status' => 'ACTIVE'])->get();

        return view('frontend.homepage.index', compact('aboutHome', 'banners', 'achievement', 'page', 'aboutUs', 'posts', 'products', 'services','procedures', 'partners','post'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {
        //
    }

    /**
     * return redirect to contact blade.
     */
    public function contact()
    {
        return view('frontend.contact.index');
    }

}
