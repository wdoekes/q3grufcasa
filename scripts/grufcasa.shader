textures/grufcasa/skyblue
{
	//qer_editorimage env/grufcasa/skyblue_up.jpg
	qer_editorimage textures/grufcasa/skyblue_up.jpg
	//q3map_lightimage textures/grufcasa/skycolor.tga
	q3map_lightimage env/grufcasa/white.tga
	surfaceparm nodlight
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm nomarks
	skyParms env/grufcasa/skyblue 512 -
	q3map_sunExt 255 230 190 300 297 60 2 32
	q3map_lightmapFilterRadius 2 16
	q3map_skylight 200 16
}

textures/grufcasa/straal
{ 
        surfaceparm trans
        surfaceparm nomarks
        surfaceparm nonsolid
        surfaceparm nolightmap
        cull none

        {
                map textures/grufcasa/straal.jpg
                tcMod Scroll .3 0
                blendFunc add
        }

}

textures/grufcasa/zwarte_lamp
{
	qer_editorimage textures/grufcasa/aanrecht.jpg
	q3map_lightimage env/grufcasa/white.tga
	{
		map textures/grufcasa/aanrecht.jpg
	}
}

//textures/wbig/fence
//{ 
//  surfaceparm nonsolid
//  surfaceparm playerclip
//  cull none
//
//  // Make sure the alpha channel is loaded:
//  { 
//    map textures/wbig/fence.tga
//    blendfunc blend
//  }
//}

//textures/wbig/fence
//{ 
//  surfaceparm nonsolid
//  surfaceparm playerclip
//  cull none
//
//  // Make sure the alpha channel is loaded:
//  { 
//    map textures/wbig/fence.tga
//    blendfunc blend
//  }
//}


// textures/wbig/fence
// {
//   cull none
//   // ^-- ook achterkant zichtbaar (= twosided, maar moet met "none")
// 
//   // https://github.com/id-Software/Quake-III-Arena/blob/dbe4ddb10315479fc00086f08e25d968b4b43c49/q3map/shaders.c
// 
//   surfaceparm trans
//   // new??
// 
//   surfaceparm nolightmap
//   // "don't generate a lightmap"
//   surfaceparm nonsolid
//   // "don't collide against curves with this" voor weapons? clears the solid flag?
//   surfaceparm playerclip
//   // "do collide players?"
// 
//   //surfaceparm nodrop
//   // "don't drop items or leave bodies (death fog, lava, etc)"
// 
//   //surfaceparm nomarks
//   //surfaceparm nodamage
//   // ^- slurpt kogels op
//  
//   // Make sure the alpha channel is loaded: 
// //  {
// //    map textures/wbig/fence.tga
// //    blendfunc blend
// //  }
// 
//   {
//     map textures/wbig/fence.tga
//     alphaFunc GE128
//     //blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
//     depthWrite
//     rgbGen identity
//   }
//   {
//     map $lightmap
//     alphaFunc GE128
//     //blendFunc GL_DST_COLOR GL_SRC_COLOR
//   }
// //  {
// //    map textures/wbig/fence.tga
// //    //blendfunc blend
// //    alphaFunc GE128
// //  }
// }
