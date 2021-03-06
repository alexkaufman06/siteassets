

<?php echo $header; ?>
<?php echo $content_top; ?>

    <div id="widgetleft">
    
	<?php echo $column_left; ?>
    
    </div>
    
    
        <div id="widgetright">
        
        <?php echo $column_right; ?>
        
        


     
     <!-- Widget -->
     	<div id="showproduct">
		
 			<div id="content">
				<div id="head"><?php echo $heading_title; ?></div>
				<div id="productpage">
 					<div id="image-left">
                    <?php if ($thumb || $images) { ?>
                		<div id="showed">
						      <?php if ($thumb) { ?>
                        <a id="image" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>">
                   		 <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
                         </a>
                         		   		   <?php } ?>
                    	</div>
                            <?php if ($images) { ?>
                 		<div id="list">
                   		 <ul>
                                 <?php foreach ($images as $image) { ?>
 								<li><a id="image" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
       														 <?php } ?>

                         </ul>
                    	</div>
                        				 <?php } ?>
               								<?php } ?>
                	</div>          
                         
  					<div id="description-left">
   						<div id="stock-info">
        <?php if ($manufacturer) { ?>
        <span><?php echo $text_manufacturer; ?></span> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a><br />
        <?php } ?>
        <span><?php echo $text_model; ?></span> <?php echo $model; ?><br />
        <span><?php echo $text_reward; ?></span> <?php echo $reward; ?><br />
        <span><?php echo $text_stock; ?></span> <?php echo $stock; ?><br />
               
                		</div>  
                          <?php if ($price) { ?>             
   						<div id="price-info">
                        <?php echo $text_price; ?>
                        <?php if (!$special) { ?>
                        <?php echo $price; ?><br />
                        <?php } else { ?>
                        <b><?php echo $price; ?></b><br /> <b><?php echo $special; ?></b><br />
                        <?php } ?>
                        <?php if ($tax) { ?>
                        <b><?php echo $text_tax; ?> <?php echo $tax; ?></b><br />
                        <?php } ?>
                        <?php if ($points) { ?>
                        <b><small><?php echo $text_points; ?> <?php echo $points; ?></small></b> <br />
                        <?php } ?>
                        <?php if ($discounts) { ?>
                        <br />
                        <div class="discount">
                          <?php foreach ($discounts as $discount) { ?>
                          <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
                          <?php } ?>
                        </div>
                        <?php } ?>                                        
                        

              
                		</div>        
                              <?php } ?>
   
                               
                               
    					<div id="price-info">

                                      <?php if ($minimum > 1) { ?>
                                    <div class="minimum"><?php echo $text_minimum; ?></div>
                                    <?php } ?>                       

                        	<div id="qty-info">
                		<?php echo $text_qty; ?>: 
                       <input type="text" id="text-num" name="quantity" size="2" value="<?php echo $minimum; ?>"/>
                             <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />

                        	</div>
                            
                            <div id="addbutton-info">
 <a class="buttonlarge" id="add_item" ><span><?php echo $button_cart; ?></span></a>


                           	</div>
                        <br /> <br />

                		</div>   
                        <?php if ($review_status) { ?>            
   						<div id="price-info">
<a id="button-text"  onclick="addToWishList('<?php echo $product_id; ?>');"><span><?php echo $button_wishlist; ?></span></a> |
        		<a  id="button-text" onclick="addToCompare('<?php echo $product_id; ?>');"><span><?php echo $button_compare; ?></span></a>        |                              
                        <img src="catalog/view/theme/default/image/stars-<?php echo $rating; ?>.png" alt="<?php echo $reviews; ?>"  />
					
              
                		</div> 
                              <?php } ?>
                               
    					<div id="price-info">
          		               
                        
	<!-- AddThis Button BEGIN -->
          <div class="addthis_default_style"><a class="addthis_button_compact"><?php echo $text_share; ?></a> <a class="addthis_button_email"></a><a class="addthis_button_print"></a> <a class="addthis_button_facebook"></a> <a class="addthis_button_twitter"></a></div>
          <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js"></script> 
          <!-- AddThis Button END --> 
          				<br />
              
                		</div> 
                                     
                	</div>   
                    
       <?php if ($options) { ?>
     					<div id="description-product-page" >
      <!-- Widget -->
     	<div id="subwidget">
			<div id="title_w"><?php echo $text_option; ?></div>
 			<div id="content">            

     					<div id="price" >
                               

        <?php foreach ($options as $option) { ?>
        <?php if ($option['type'] == 'select') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <select name="option[<?php echo $option['product_option_id']; ?>]">
            <option value=""><?php echo $text_select; ?></option>
            <?php foreach ($option['option_value'] as $option_value) { ?>
            <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
            </option>
            <?php } ?>
          </select>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'radio') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <?php foreach ($option['option_value'] as $option_value) { ?>
          <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
          <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
          </label>
          <br />
          <?php } ?>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'checkbox') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <?php foreach ($option['option_value'] as $option_value) { ?>
          <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
          <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
          </label>
          <br />
          <?php } ?>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'image') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
            <table class="option-image">
              <?php foreach ($option['option_value'] as $option_value) { ?>
              <tr>
                <td style="width: 1px;"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /></td>
                <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /></label></td>
                <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label></td>
              </tr>
              <?php } ?>
            </table>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'text') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'textarea') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="40" rows="5"><?php echo $option['option_value']; ?></textarea>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'file') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <a id="button-option-<?php echo $option['product_option_id']; ?>" class="buttonlarge"><span><?php echo $button_upload; ?></span></a><br />
          <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'date') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'datetime') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'time') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
        </div>
        <br />
        <?php } ?>
        <?php } ?>


              
                		</div>  
                  
            </div>

		
        
        </div>   	
    <!-- Widget -->                               
                               
              
                		</div>   
      <?php } ?>                                                  
                    <div id="description-page">
                    
                         <!-- Widget -->
     	<div id="subwidget">
			<div id="title_w">Description</div>
 			<div id="content">            
			<?php echo $description; ?>
                      <?php if ($attribute_groups) { ?>
          <div id="tab-attribute" class="tab-content">
            <table class="attribute">
              <?php foreach ($attribute_groups as $attribute_group) { ?>
              <thead>
                <tr>
                  <td colspan="2"><?php echo $attribute_group['name']; ?></td>
                </tr>
              </thead>
              <tbody>
                <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                <tr>
                  <td><?php echo $attribute['name']; ?></td>
                  <td><?php echo $attribute['text']; ?></td>
                </tr>
                <?php } ?>
              </tbody>
              <?php } ?>
            </table>
          </div>
          <?php } ?>
            </div>

		
        
        </div>   	
    <!-- Widget -->
    
     <!-- Widget -->
     	<div id="subwidget">
			<div id="title">Review (<?php echo $reviews; ?>)</div>
 			<div id="content">            
				<div id="review_content">
                
                
                </div>
            
            </div>

		
        
        </div>   	
    <!-- Widget --> 
    
    <?php if ($review_status) { ?>
    
        <!-- Widget -->
     	<div id="subwidget">
			<div id="title"><?php echo $text_write; ?></div>
 			<div id="content">            
   <b><?php echo $entry_name; ?></b><br />
    <input type="text" name="name" value="" />
    <br />
    <br />
    <b><?php echo $entry_review; ?></b>
    <textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>
    <span style="font-size: 11px;"><?php echo $text_note; ?></span><br />
    <br />
    <div id="regbox-button">
    <b><?php echo $entry_rating; ?></b> <span><?php echo $entry_bad; ?></span>&nbsp;
    <input type="radio" name="rating" value="1" />
    &nbsp;
    <input type="radio" name="rating" value="2" />
    &nbsp;
    <input type="radio" name="rating" value="3" />
    &nbsp;
    <input type="radio" name="rating" value="4" />
    &nbsp;
    <input type="radio" name="rating" value="5" />
    &nbsp; <span><?php echo $entry_good; ?></span>

	</div>
    <b><?php echo $entry_captcha; ?></b><br />
    <input type="text" name="captcha" value="" />
    <br />
    <img src="index.php?route=product/product/captcha" alt="" id="captcha" /><br />
    <br />
    			<div id="notiffy-server"></div>
    		<div id="regbox-button">
 				<div id="right">
                
             <a class="buttonlarge" id="button" ><span><?php echo $button_continue; ?></span></a>
				</div>
       
            </div>

            </div>

		
        
        </div>   	
    <!-- Widget -->
    <?php } ?>
      <?php if ($tags) { ?>
      <div id="subwidget">
      			<div id="title_w"><?php echo $text_tags; ?></div>
                <div id="content">        
                 <?php foreach ($tags as $tag) { ?>   
                <a href="<?php echo $tag['href']; ?>"><?php echo $tag['tag']; ?></a>,
                <?php } ?>
                </div>
      </div>
          <?php } ?>
          
          
          
          
                    
                    </div>
                                 
                </div>

                 
            </div>
        </div>   	    
    <!-- Widget -->   
        
        
        
        </div>
 <script type="text/javascript">
$("document").ready(function(){
$('#notiffy-server').hide();							 
$('#add_item').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/update',
		type: 'post',
		data: $('#price-info input[type=\'text\'], #price-info input[type=\'hidden\'], #price-info input[type=\'radio\']:checked, #price-info input[type=\'checkbox\']:checked, #price-info select, #price-info textarea'),
		dataType: 'json',
		success: function(json) {
	

			if (json['success']) {
		
				$('#totalitem').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});							 
									});					 
								 
$('#review_content').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');
$('#button-review').bind('click', function() {

	$.ajax({
		type: 'POST',
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),

		complete: function() {
			$('#button-review').attr('disabled', false);

		},
		success: function(data) {
			if (data.error) {
				$('#notiffy-server').after('<div class="warning">' + data.error + '</div>');
			
			}
			
			if (data.success) {
				$('#notiffy-server').after('<div class="success">' + data.success + '</div>');
										
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
											});
					});

</script>        

<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
	action: 'index.php?route=product/product/upload',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
	},
	onComplete: function(file, json) {
		$('.error').remove();
		
		if (json.success) {
			alert(json.success);
			
			$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json.file);
		}
		
		if (json.error) {
			$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json.error + '</span>');
		}
		
		$('.loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').slideUp('slow');
		
	$('#review').load(this.href);
	
	$('#review').slideDown('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		type: 'POST',
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data.error) {
				$('#review-title').after('<div class="warning">' + data.error + '</div>');
			}
			
			if (data.success) {
				$('#review-title').after('<div class="success">' + data.success + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
if ($.browser.msie && $.browser.version == 6) {
	$('.date, .datetime, .time').bgIframe();
}

$('.date').datepicker({dateFormat: 'yy-mm-dd'});
$('.datetime').datetimepicker({
	dateFormat: 'yy-mm-dd',
	timeFormat: 'h:m'
});
$('.time').timepicker({timeFormat: 'h:m'});
//--></script> 
<?php echo $footer; ?>