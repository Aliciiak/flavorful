# def meals(type, flavor)
#     meal={
#         :breakfast=>{ 
#             :savory=> ["link1", "link2"],
#             :sweet=>["link2"],
#             :spicy=>["link3"]
#         },
#         :lunch=>{ 
#             :savory=> ["link1"],
#             :sweet=>["link2"],
#             :spicy=>["link3"]
#         },
#         :dinner=>{ 
#             :savory=> ["link1"],
#             :sweet=>["link2"],
#             :spicy=>["link3"],
#         },
#         :snack=>{ 
#             :savory=> ["link1"],
#             :sweet=>["link2"],
#             :spicy=>["link3"]
#         }
#     }
    
#     if type == "breakfast" 
#         if flavor == "savory"
#             recipe=meal[:breakfast][:savory]
#         elsif flavor == "sweet"
#             recipe = meal[:breakfast][:sweet]
#         elsif flavor == "spicy"
#             recipe = meal[:breakfast][:spicy]
#         end
#     elsif type == "lunch" 
#         if flavor == "savory"
#             recipe=meal[:lunch][:savory]
#         elsif flavor == "sweet"
#             recipe = meal[:lunch][:sweet]
#         elsif flavor == "spicy"
#             recipe = meal[:lunch][:spicy]
#         end
#     elsif type == "dinner"
#         if flavor == "savory"
#             recipe=meal[:dinner][:savory]
#         elsif flavor == "sweet"
#             recipe = meal[:dinner][:sweet]
#         elsif flavor == "spicy"
#             recipe = meal[:dinner][:spicy]
#         end
#     elsif type=="snack"
#         if flavor == "savory"
#             recipe=meal[:snack][:savory]
#         elsif flavor == "sweet"
#             recipe = meal[:snack][:sweet]
#         elsif flavor == "spicy"
#             recipe = meal[:snack][:spicy]
#         end
#     end
# end


class Recipes
    attr_accessor :title, :url, :image, :description
    def initialize(title, url, image, description)
        @title=title
        @url=url
        @image=image
        @description=description
    end
end

def meals(type, flavor)
    
    if @params[:meal] == "breakfast" 
    
        if @params[:flavor] == "savory"
    
            breakfast_savory1 = Recipes.new("Mini Breakfast Pizzas","http://www.eatingwell.com/recipe/250132/breakfast-mini-pizzas","http://images.media-allrecipes.com/userphotos/960x960/3757506.jpg","What's better than pizza for breakfast?")
            
            breakfast_savory2= Recipes.new("Grapefruit, Avocado, and Prosciutto Breakfast Salad","http://www.myrecipes.com/recipe/grapefruit-avocado-prosciutto-breakfast-salad","https://imagesvc.timeincapp.com/v3/mm/image?url=http%3A%2F%2Fcdn-image.myrecipes.com%2Fsites%2Fdefault%2Ffiles%2Fstyles%2F4_3_horizontal_-_1200x900%2Fpublic%2Fgrapefruit-avocado-prosciutto-breakfast-salad-ck.jpg%3Fitok%3DHmMtIgzI&w=1800&q=60","Ever tried salad for breakfast?")
            
            return "#{breakfast_savory1.title}++#{breakfast_savory1.url}++#{breakfast_savory1.image}++#{breakfast_savory1.description}++#{breakfast_savory2.title}++#{breakfast_savory2.url}++#{breakfast_savory2.image}++#{breakfast_savory2.description}"
            
        elsif @params[:flavor] == "sweet"
            
            breakfast_sweet1= Recipes.new("Chocolate Banana Oatmeal","http://www.eatingwell.com/recipe/251103/chocolate-banana-oatmeal/","http://images.media-allrecipes.com/userphotos/960x960/4326809.jpg","Craving something sweet but still healthy?")
            
            breakfast_sweet2 = Recipes.new("Cinnamon Roll Waffles","http://www.seriouseats.com/recipes/2012/02/cinnamon-roll-waffles-bacon-apple-frosting-waffled-recipe.html","http://www.seriouseats.com/recipes/assets_c/2012/02/20120213-127677-Sandwiched-Waffle-Sandwich-PRIMARY-thumb-625xauto-218643.jpg","Sure to make your morning extra sweet!")
            
            return "#{breakfast_sweet1.title}++#{breakfast_sweet1.url}++#{breakfast_sweet1.image}++#{breakfast_sweet1.description}++#{breakfast_sweet2.title}++#{breakfast_sweet2.url}++#{breakfast_sweet2.image}++#{breakfast_sweet2.description}"
        
        elsif @params[:flavor] == "spicy"
        
            breakfast_spicy1 = Recipes.new("Breakfast Papas","http://www.nibblesandfeasts.com/2013/08/breakfast-papas/","http://www.nibblesandfeasts.com/wp-content/uploads/2013/07/Breakfast-Papas-1.jpg.jpg","Love potatoes, tired of hashbrowns? Now you can have this for breakfast!")
            
            breakfast_spicy2 = Recipes.new("Anda Bhurji (Spicy Indian Scrambled Eggs)","http://www.seriouseats.com/recipes/2012/02/anda-bhurji-spicy-indian-scrambled-eggs-recipe.html","http://www.seriouseats.com/recipes/assets_c/2012/02/20121102-Spicy-Indian-scrambled-eggs-thumb-625xauto-219053.jpg","Want a twist on plain old scrambled eggs? Try this recipe!")
            
            return "#{breakfast_spicy1.title}++#{breakfast_spicy1.url}++#{breakfast_spicy1.image}++#{breakfast_spicy1.description}++#{breakfast_spicy2.title}++#{breakfast_spicy2.url}++#{breakfast_spicy2.image}++#{breakfast_spicy2.description}"
        end
    
    elsif @params[:meal] == "lunch" 
       
        if @params[:flavor] == "savory"
            
            lunch_savory1= Recipes.new("Savory Ham Wraps","http://www.food.com/recipe/savory","http://img.sndimg.com/food/image/upload/h_420,w_560,c_fit/v1/img/recipes/27/55/04/picG2zaNa.jpg","Try this twist on a classic ham sandwich!")
            
            lunch_savory2= Recipes.new("Savory Squash & Red Pepper Medley","http://www.food.com/recipe/savory-squash-red-pepper-medley-376608","http://img.sndimg.com/food/image/upload/h_420,w_560,c_fit/v1/img/recipes/37/66/08/picEzyLP1.jpg","Use this quick recipe to spice up some plain veggies!")
            
            return "#{lunch_savory1.title}++#{lunch_savory1.url}++#{lunch_savory1.image}++#{lunch_savory1.description}++#{lunch_savory2.title}++#{lunch_savory2.url}++#{lunch_savory2.image}++#{lunch_savory2.description}"
            
        elsif @params[:flavor] == "sweet"
        
            lunch_sweet1= Recipes.new("Sweet Restaurant Slaw","http://allrecipes.com/recipe/142027/sweet-restaurant-slaw/?internalSource=hub%20recipe&referringContentType=search%20results&clickId=cardslot%201/","http://images.media-allrecipes.com/userphotos/720x405/2276935.jpg","Have this with a turkey sandwich for the perfect sweet and savory lunch!")
            
            lunch_sweet2= Recipes.new("Fruity Curry Chicken Salad","http://allrecipes.com/recipe/8932/fruity-curry-chicken-salad/?internalSource=hub%20recipe&referringContentType=search%20results&clickId=cardslot%203","http://images.media-allrecipes.com/userphotos/250x250/1103604.jpg","A healthy and tasty chicken salad with a fruity twist!")
            
            return "#{lunch_sweet1.title}++#{lunch_sweet1.url}++#{lunch_sweet1.image}++#{lunch_sweet1.description}++#{lunch_sweet2.title}++#{lunch_sweet2.url}++#{lunch_sweet2.image}++#{lunch_sweet2.description}"
            
        elsif @params[:flavor] == "spicy"
        
            lunch_spicy1= Recipes.new("Spicy Garlic Shrimp","http://www.food.com/recipe/4-minute-spicy-garlic-shrimp-107997","http://img.sndimg.com/food/image/upload/h_420,w_560,c_fit/v1/img/recipes/10/79/97/picSxulFo.jpg","You'll get a kick out of this meal, I GARL(ic)-antee it!")
            
            lunch_spicy2= Recipes.new("Spicy Lentil Soup","http://www.foodnetwork.com/recipes/food-network-kitchen/spicy-lentil-soup-recipe-1973283","http://food.fnr.sndimg.com/content/dam/images/food/fullset/2010/7/21/3/FNM_090110-WN-Dinners-024_s4x3.jpg.rend.hgtvcom.616.462.suffix/1371592995411.jpeg","Try this delicious soup -- it's hot for more reasons than one.")

            return "#{lunch_spicy1.title}++#{lunch_spicy1.url}++#{lunch_spicy1.image}++#{lunch_spicy1.description}++#{lunch_spicy2.title}++#{lunch_spicy2.url}++#{lunch_spicy2.image}++#{lunch_spicy2.description}"
        end
        
    elsif @params[:meal] == "dinner" 
    
        if @params[:flavor] == "savory"
            
            dinner_savory1= Recipes.new("Monterey Chicken and Baby Red Potatoes","http://www.momswhothink.com/quick-and-easy-dinner-recipes/monterey-chicken-baby-red-potatoes.html","http://www.momswhothink.com/images/stories/homefood/xMonterey-Chicken-with-Baby-Red-Potatoes2.jpg.pagespeed.ic.9FyGDGlzie.webp","This chicken and potato recipe will definitely satisfy your savory cravings!")
            
            dinner_savory2= Recipes.new("Cauliflower Rice Stir Fry","http://www.marthastewart.com/1050726/cauliflower-rice-stir-fry","http://assets.marthastewart.com/styles/wmax-520-highdpi/d27/wk1-d-stirfry-020-mld109440/wk1-d-stirfry-020-mld109440_vert.jpg?itok=PLsu7o5I","This no-grain cauliflower dish is surprisingly hearty, and is sure to keep you happy and healthy!")
            
            return "#{dinner_savory1.title}++#{dinner_savory1.url}++#{dinner_savory1.image}++#{dinner_savory1.description}++#{dinner_savory2.title}++#{dinner_savory2.url}++#{dinner_savory2.image}++#{dinner_savory2.description}"
            
        elsif @params[:flavor] == "sweet"
            
            dinner_sweet1= Recipes.new("Smoky Sweet Potato and Black Bean Casserole","http://www.thekitchn.com/recipe-smoky-sweet-potato-amp-black-bean-casserole-239326","http://atmedia.imgix.net/58244ae8c2d6933ae24b35a4f18adb44c419859f?auto=format&q=45&w=1033.0&fit=max&cs=strip","Perfect to curb your sweet tooth and your hunger!")
            
            dinner_sweet2= Recipes.new("Sweet Mustard Glazed Salmon","http://www.food.com/recipe/sweet-mustard-glazed-salmon-for-the-grill-119081","http://img.sndimg.com/food/image/upload/h_420,w_560,c_fit/v1/img/recipes/11/90/81/n2LRkLVlSGWtiBM9jWCx_111salmon.3.jpg","You MUST-ard try this sweet salmon!")
            
            return "#{dinner_sweet1.title}++#{dinner_sweet1.url}++#{dinner_sweet1.image}++#{dinner_sweet1.description}++#{dinner_sweet2.title}++#{dinner_sweet2.url}++#{dinner_sweet2.image}++#{dinner_sweet2.description}"
            
        elsif @params[:flavor] == "spicy"

            dinner_spicy1= Recipes.new("Steak with Spicy Olive Pesto","http://www.foodnetwork.com/recipes/food-network-kitchen/steak-with-spicy-olive-pesto-recipe-2122019","http://food.fnr.sndimg.com/content/dam/images/food/fullset/2012/12/20/2/FNM_010113-Steak-With-Spicy-Olive-Pesto-Recipe_s4x3.jpg.rend.hgtvcom.616.462.suffix/1382561095023.jpeg","Add some spice to your steak for an extra kick!")
            
            dinner_spicy2= Recipes.new("Spicy Mushrooms","http://www.foodnetwork.com/recipes/food-network-kitchen/spicy-mushrooms-recipe-2106328","http://food.fnr.sndimg.com/content/dam/images/food/fullset/2011/10/5/1/FNM_110111-WN-Dinners-028_s4x3.jpg.rend.hgtvcom.616.462.suffix/1382561103775.jpeg","Who says vegetables have to be boring?")
            
            return "#{dinner_spicy1.title}++#{dinner_spicy1.url}++#{dinner_spicy1.image}++#{dinner_spicy1.description}++#{dinner_spicy2.title}++#{dinner_spicy2.url}++#{dinner_spicy2.image}++#{dinner_spicy2.description}"
        end
        
    elsif type=="snack"
        
        if flavor == "savory"
            
            snack_savory1= Recipes.new("Savory Spiced Nuts","http://www.food.com/recipe/savory-spiced-nuts-44313","http://img.sndimg.com/food/image/upload/h_420,w_560,c_fit/v1/img/recipes/44/31/3/piczI87Ns.jpg","You'll go NUTS over this tasty snack!")
            
            snack_savory2= Recipes.new("Sun Dried Tomato and Artichoke Dip","http://www.marthastewart.com/1047912/sun-dried-tomato-and-artichoke-dip","http://assets.marthastewart.com/styles/wmax-520-highdpi/d24/bd104026_0908_tomato_dip/bd104026_0908_tomato_dip_xl.jpg?itok=nP_FZJBg","Dip into this for a quick and healthy bite!")
            
            return "#{snack_savory1.title}++#{snack_savory1.url}++#{snack_savory1.image}++#{snack_savory1.description}++#{snack_savory2.title}++#{snack_savory2.url}++#{snack_savory2.image}++#{snack_savory2.description}"
            
        elsif flavor == "sweet"
            
            snack_sweet1= Recipes.new("Chex™ Muddy Buddies™","https://www.bettycrocker.com/recipes/chex-muddy-buddies/92e4756c-abc1-452a-9b2c-dd124d858050","https://images-gmi-pmc.edge-generalmills.com/80a8c853-47fe-48cb-ba80-04a5f83aea70.jpg","Buddy up to a crunchy Chex® snack with all-time favorite chocolate and peanut butter flavors!")
            
            snack_sweet2= Recipes.new("No-Bake Cranberry Granola Cookies","https://www.bettycrocker.com/recipes/no-bake-cranberry-granola-cookies/b6c81fa3-d70b-41d1-b5ac-09d11a7dfc87","https://images-gmi-pmc.edge-generalmills.com/653ab76e-cb07-4f86-a07d-d9e8023434b1.jpg","This healthy recipe will satisfy your sweet tooth AND keep you energized!")
            
            return "#{snack_sweet1.title}++#{snack_sweet1.url}++#{snack_sweet1.image}++#{snack_sweet1.description}++#{snack_sweet2.title}++#{snack_sweet2.url}++#{snack_sweet2.image}++#{snack_sweet2.description}"
            
        elsif flavor == "spicy"
            
            snack_spicy1= Recipes.new("Chili Lime Cucumbers","http://www.foodnetwork.com/recipes/food-network-kitchen/chile-lime-cucumbers-recipe-2104115","http://food.fnr.sndimg.com/content/dam/images/food/fullset/2011/7/13/0/FNM_030110-Chile-Lime-Cucumbers_s4x3.jpg.rend.hgtvcom.616.462.suffix/1383235904386.jpeg","Need a bite to wake you up? This is the recipe for you!") 
            
            snack_spicy2= Recipes.new("Spicy Broccoli","http://www.foodnetwork.com/recipes/food-network-kitchen/spicy-broccoli-recipe-2109074","http://food.fnr.sndimg.com/content/dam/images/food/fullset/2012/9/4/5/FNM_100112-Spicy-Sesame-Broccoli-Recipe_s4x3.jpg.rend.hgtvcom.616.462.suffix/1382561089464.jpeg","This recipe is sure to have you going back for more!")

            return "#{snack_spicy1.title}++#{snack_spicy1.url}++#{snack_spicy1.image}++#{snack_spicy1.description}++#{snack_spicy2.title}++#{snack_spicy2.url}++#{snack_spicy2.image}++#{snack_spicy2.description}"
        end
    end
end