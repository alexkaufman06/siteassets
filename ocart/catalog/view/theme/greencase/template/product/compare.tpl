<?php echo $header; ?>
<?php echo $content_top; ?>
     <!-- Top content -->
  	<div id="topcontent">   

	<div id="title_w"> <?php echo $heading_title; ?></div>
  <?php if ($products) { ?>
  <table class="compare-info">

    <tbody>
      <tr>
        <td><?php echo $text_name; ?></td>
        <?php foreach ($products as $product) { ?>
        <td class="name"><a href="<?php echo $products[$product['product_id']]['href']; ?>"><?php echo $products[$product['product_id']]['name']; ?></a></td>
        <?php } ?>
      </tr>
      <tr>
        <td><?php echo $text_image; ?></td>
        <?php foreach ($products as $product) { ?>
        <td><?php if ($products[$product['product_id']]['thumb']) { ?>
          <img src="<?php echo $products[$product['product_id']]['thumb']; ?>" alt="<?php echo $products[$product['product_id']]['name']; ?>" />
          <?php } ?></td>
        <?php } ?>
      </tr>
      <tr>
        <td><?php echo $text_price; ?></td>
        <?php foreach ($products as $product) { ?>
        <td><?php if ($products[$product['product_id']]['price']) { ?>
          <?php if (!$products[$product['product_id']]['special']) { ?>
          <?php echo $products[$product['product_id']]['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $products[$product['product_id']]['price']; ?></span> <span class="price-new"><?php echo $products[$product['product_id']]['special']; ?></span>
          <?php } ?>
          <?php } ?></td>
        <?php } ?>
      </tr>
      <tr>
        <td><?php echo $text_model; ?></td>
        <?php foreach ($products as $product) { ?>
        <td><?php echo $products[$product['product_id']]['model']; ?></td>
        <?php } ?>
      </tr>
      <tr>
        <td><?php echo $text_manufacturer; ?></td>
        <?php foreach ($products as $product) { ?>
        <td><?php echo $products[$product['product_id']]['manufacturer']; ?></td>
        <?php } ?>
      </tr>
      <tr>
        <td><?php echo $text_availability; ?></td>
        <?php foreach ($products as $product) { ?>
        <td><?php echo $products[$product['product_id']]['availability']; ?></td>
        <?php } ?>
      </tr>
      <tr>
        <td><?php echo $text_rating; ?></td>
        <?php foreach ($products as $product) { ?>
        <td><img src="catalog/view/theme/default/image/stars-<?php echo $products[$product['product_id']]['rating']; ?>.png" alt="<?php echo $products[$product['product_id']]['reviews']; ?>" /><br />
          <?php echo $products[$product['product_id']]['reviews']; ?></td>
        <?php } ?>
      </tr>
      <tr>
        <td><?php echo $text_summary; ?></td>
        <?php foreach ($products as $product) { ?>
        <td class="description"><?php echo $products[$product['product_id']]['description']; ?></td>
        <?php } ?>
      </tr>
      <tr>
        <td><?php echo $text_weight; ?></td>
        <?php foreach ($products as $product) { ?>
        <td><?php echo $products[$product['product_id']]['weight']; ?></td>
        <?php } ?>
      </tr>
      <tr>
        <td><?php echo $text_dimension; ?></td>
        <?php foreach ($products as $product) { ?>
        <td><?php echo $products[$product['product_id']]['length']; ?> x <?php echo $products[$product['product_id']]['width']; ?> x <?php echo $products[$product['product_id']]['height']; ?></td>
        <?php } ?>
      </tr>
    </tbody>
    <?php foreach ($attribute_groups as $attribute_group) { ?>
    <thead>
      <tr>
        <td colspan="<?php echo count($products) + 1; ?>"><?php echo $attribute_group['name']; ?></td>
      </tr>
    </thead>
    <?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
    <tbody>
      <tr>
        <td><?php echo $attribute['name']; ?></td>
        <?php foreach ($products as $product) { ?>
        <?php if (isset($products[$product['product_id']]['attribute'][$key])) { ?>
        <td><?php echo $products[$product['product_id']]['attribute'][$key]; ?></td>
        <?php } else { ?>
        <td></td>
        <?php } ?>
        <?php } ?>
      </tr>
    </tbody>
    <?php } ?>
    <?php } ?>
    
    <tr>
      <td></td>
      <?php foreach ($products as $product) { ?>
      <td>
             	<div id="sub-left">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
          <input type="hidden" name="remove" value="<?php echo $product['product_id']; ?>" />
          <a class="buttonlarge" onclick="$(this).parent().submit();"><span><?php echo $text_remove; ?></span></a>
        </form>
                </div>
                
            	<div id="sub-right">
      <a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="buttonlarge"><span><?php echo $button_cart; ?></span></a>
                </div>     

      
      </td>
      <?php } ?>
    </tr>
 
  </table>
  
			<div id="regbox-button" style="width:100%;">
 				<div id="right">
              
<a href="<?php echo $continue; ?>" class="buttonlarge"><span><?php echo $button_continue; ?></span></a>
				</div>
       
            </div>  

  <?php } else { ?>
			<div id="regbox-button" style="width:100%;">

			<?php echo $text_empty; ?>

            </div> 
 			<div id="regbox-button" style="width:100%;">
 				<div id="right">
 <a href="<?php echo $continue; ?>" class="buttonlarge"><span><?php echo $button_continue; ?></span></a>
				</div>
       
            </div>              
  <?php } ?>

    </div>
    <!-- Top content -->
    
    <div id="widgetleft">
    
    <?php echo $column_left; ?>
    
    </div>
        <div id="widgetright">
        
        <?php echo $column_right; ?>
      
        </div>





  <?php echo $content_bottom; ?>
<?php echo $footer; ?>